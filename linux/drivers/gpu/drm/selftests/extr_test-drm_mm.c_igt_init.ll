; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_igt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_igt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32, i64 }
%struct.drm_mm_node = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"zeroed mm claims to be initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"mm claims not to be initialized\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"mm not empty on creation\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to reserve whole drm_mm\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_mm, align 8
  %6 = alloca %struct.drm_mm_node, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 4096, i32* %4, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = bitcast %struct.drm_mm* %5 to %struct.drm_mm_node*
  %11 = call i32 @memset(%struct.drm_mm_node* %10, i32 0, i32 16)
  %12 = bitcast %struct.drm_mm* %5 to %struct.drm_mm_node*
  %13 = call i64 @drm_mm_initialized(%struct.drm_mm_node* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %77

18:                                               ; preds = %1
  %19 = bitcast %struct.drm_mm* %5 to %struct.drm_mm_node*
  %20 = call i32 @memset(%struct.drm_mm_node* %19, i32 255, i32 16)
  %21 = bitcast %struct.drm_mm* %5 to %struct.drm_mm_node*
  %22 = call i32 @drm_mm_init(%struct.drm_mm_node* %21, i32 0, i32 4096)
  %23 = bitcast %struct.drm_mm* %5 to %struct.drm_mm_node*
  %24 = call i64 @drm_mm_initialized(%struct.drm_mm_node* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %67

28:                                               ; preds = %18
  %29 = bitcast %struct.drm_mm* %5 to %struct.drm_mm_node*
  %30 = call i32 @drm_mm_clean(%struct.drm_mm_node* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %67

34:                                               ; preds = %28
  %35 = bitcast %struct.drm_mm* %5 to %struct.drm_mm_node*
  %36 = call i32 @assert_one_hole(%struct.drm_mm_node* %35, i32 0, i32 4096)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %67

41:                                               ; preds = %34
  %42 = call i32 @memset(%struct.drm_mm_node* %6, i32 0, i32 16)
  %43 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %6, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %6, i32 0, i32 0
  store i32 4096, i32* %44, align 8
  %45 = bitcast %struct.drm_mm* %5 to %struct.drm_mm_node*
  %46 = call i32 @drm_mm_reserve_node(%struct.drm_mm_node* %45, %struct.drm_mm_node* %6)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %67

51:                                               ; preds = %41
  %52 = bitcast %struct.drm_mm* %5 to %struct.drm_mm_node*
  %53 = call i32 @assert_no_holes(%struct.drm_mm_node* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %67

58:                                               ; preds = %51
  %59 = call i32 @drm_mm_remove_node(%struct.drm_mm_node* %6)
  %60 = bitcast %struct.drm_mm* %5 to %struct.drm_mm_node*
  %61 = call i32 @assert_one_hole(%struct.drm_mm_node* %60, i32 0, i32 4096)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %67

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %63, %55, %49, %38, %32, %26
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = bitcast %struct.drm_mm* %5 to %struct.drm_mm_node*
  %72 = call i32 @show_mm(%struct.drm_mm_node* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = bitcast %struct.drm_mm* %5 to %struct.drm_mm_node*
  %75 = call i32 @drm_mm_takedown(%struct.drm_mm_node* %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %15
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @memset(%struct.drm_mm_node*, i32, i32) #1

declare dso_local i64 @drm_mm_initialized(%struct.drm_mm_node*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @drm_mm_init(%struct.drm_mm_node*, i32, i32) #1

declare dso_local i32 @drm_mm_clean(%struct.drm_mm_node*) #1

declare dso_local i32 @assert_one_hole(%struct.drm_mm_node*, i32, i32) #1

declare dso_local i32 @drm_mm_reserve_node(%struct.drm_mm_node*, %struct.drm_mm_node*) #1

declare dso_local i32 @assert_no_holes(%struct.drm_mm_node*) #1

declare dso_local i32 @drm_mm_remove_node(%struct.drm_mm_node*) #1

declare dso_local i32 @show_mm(%struct.drm_mm_node*) #1

declare dso_local i32 @drm_mm_takedown(%struct.drm_mm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
