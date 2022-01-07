; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_pbl_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_pbl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { i32 }
%struct.pbl_context = type { i32, i32, i32 }
%struct.ib_umem = type { i32 }

@EFA_CHUNK_PAYLOAD_PTR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"user_pbl_created: user_pages[%u], continuous[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_dev*, %struct.pbl_context*, %struct.ib_umem*, i32, i32)* @pbl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbl_create(%struct.efa_dev* %0, %struct.pbl_context* %1, %struct.ib_umem* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.efa_dev*, align 8
  %8 = alloca %struct.pbl_context*, align 8
  %9 = alloca %struct.ib_umem*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.efa_dev* %0, %struct.efa_dev** %7, align 8
  store %struct.pbl_context* %1, %struct.pbl_context** %8, align 8
  store %struct.ib_umem* %2, %struct.ib_umem** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @EFA_CHUNK_PAYLOAD_PTR_SIZE, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load %struct.pbl_context*, %struct.pbl_context** %8, align 8
  %17 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.pbl_context*, %struct.pbl_context** %8, align 8
  %19 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @kvzalloc(i32 %20, i32 %21)
  %23 = load %struct.pbl_context*, %struct.pbl_context** %8, align 8
  %24 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.pbl_context*, %struct.pbl_context** %8, align 8
  %26 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %96

32:                                               ; preds = %5
  %33 = load %struct.pbl_context*, %struct.pbl_context** %8, align 8
  %34 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @is_vmalloc_addr(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load %struct.pbl_context*, %struct.pbl_context** %8, align 8
  %40 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %42 = load %struct.ib_umem*, %struct.ib_umem** %9, align 8
  %43 = load %struct.pbl_context*, %struct.pbl_context** %8, align 8
  %44 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @umem_to_page_list(%struct.efa_dev* %41, %struct.ib_umem* %42, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %90

52:                                               ; preds = %38
  %53 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %54 = load %struct.pbl_context*, %struct.pbl_context** %8, align 8
  %55 = call i32 @pbl_indirect_initialize(%struct.efa_dev* %53, %struct.pbl_context* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %90

59:                                               ; preds = %52
  br label %82

60:                                               ; preds = %32
  %61 = load %struct.pbl_context*, %struct.pbl_context** %8, align 8
  %62 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %64 = load %struct.ib_umem*, %struct.ib_umem** %9, align 8
  %65 = load %struct.pbl_context*, %struct.pbl_context** %8, align 8
  %66 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @umem_to_page_list(%struct.efa_dev* %63, %struct.ib_umem* %64, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %90

74:                                               ; preds = %60
  %75 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %76 = load %struct.pbl_context*, %struct.pbl_context** %8, align 8
  %77 = call i32 @pbl_continuous_initialize(%struct.efa_dev* %75, %struct.pbl_context* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %90

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %59
  %83 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %84 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.pbl_context*, %struct.pbl_context** %8, align 8
  %87 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ibdev_dbg(i32* %84, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %88)
  store i32 0, i32* %6, align 4
  br label %96

90:                                               ; preds = %80, %73, %58, %51
  %91 = load %struct.pbl_context*, %struct.pbl_context** %8, align 8
  %92 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @kvfree(i32 %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %90, %82, %29
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @kvzalloc(i32, i32) #1

declare dso_local i64 @is_vmalloc_addr(i32) #1

declare dso_local i32 @umem_to_page_list(%struct.efa_dev*, %struct.ib_umem*, i32, i32, i32) #1

declare dso_local i32 @pbl_indirect_initialize(%struct.efa_dev*, %struct.pbl_context*) #1

declare dso_local i32 @pbl_continuous_initialize(%struct.efa_dev*, %struct.pbl_context*) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @kvfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
