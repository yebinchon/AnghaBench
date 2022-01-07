; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_manager_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_manager_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_sa_manager = type { i32, i32*, i32*, i32, i32*, i8*, i8*, i32 }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"(%d) failed to allocate bo for manager\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_sa_bo_manager_init(%struct.radeon_device* %0, %struct.radeon_sa_manager* %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_sa_manager*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %8, align 8
  store %struct.radeon_sa_manager* %1, %struct.radeon_sa_manager** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %17 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %16, i32 0, i32 7
  %18 = call i32 @init_waitqueue_head(i32* %17)
  %19 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %20 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %23 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %26 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %29 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %31 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %30, i32 0, i32 3
  %32 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %33 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  %34 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %35 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %34, i32 0, i32 3
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %49, %6
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %43 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %37

52:                                               ; preds = %37
  %53 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %9, align 8
  %59 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %58, i32 0, i32 1
  %60 = call i32 @radeon_bo_create(%struct.radeon_device* %53, i32 %54, i8* %55, i32 1, i8* %56, i8* %57, i32* null, i32* null, i32** %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %7, align 4
  br label %72

70:                                               ; preds = %52
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %63
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i8*, i32, i8*, i8*, i32*, i32*, i32**) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
