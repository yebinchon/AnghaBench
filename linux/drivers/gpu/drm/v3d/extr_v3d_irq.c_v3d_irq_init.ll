; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_irq.c_v3d_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_irq.c_v3d_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i32, i32, i32, i32, i32 }

@v3d_overflow_mem_work = common dso_local global i32 0, align 4
@V3D_CTL_INT_CLR = common dso_local global i32 0, align 4
@V3D_CORE_IRQS = common dso_local global i32 0, align 4
@V3D_HUB_INT_CLR = common dso_local global i32 0, align 4
@V3D_HUB_IRQS = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@v3d_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"v3d_core0\00", align 1
@v3d_hub_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"v3d_hub\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"v3d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"IRQ setup failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v3d_irq_init(%struct.v3d_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v3d_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v3d_dev* %0, %struct.v3d_dev** %3, align 8
  %7 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %8 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %7, i32 0, i32 4
  %9 = load i32, i32* @v3d_overflow_mem_work, align 4
  %10 = call i32 @INIT_WORK(i32* %8, i32 %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %22, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %14 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @V3D_CTL_INT_CLR, align 4
  %20 = load i32, i32* @V3D_CORE_IRQS, align 4
  %21 = call i32 @V3D_CORE_WRITE(i32 %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load i32, i32* @V3D_HUB_INT_CLR, align 4
  %27 = load i32, i32* @V3D_HUB_IRQS, align 4
  %28 = call i32 @V3D_WRITE(i32 %26, i32 %27)
  %29 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %30 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @platform_get_irq(i32 %31, i32 1)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @EPROBE_DEFER, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %104

39:                                               ; preds = %25
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %39
  %43 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %44 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @v3d_irq, align 4
  %48 = load i32, i32* @IRQF_SHARED, align 4
  %49 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %50 = call i32 @devm_request_irq(i32 %45, i32 %46, i32 %47, i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.v3d_dev* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %91

54:                                               ; preds = %42
  %55 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %56 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %59 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @platform_get_irq(i32 %60, i32 0)
  %62 = load i32, i32* @v3d_hub_irq, align 4
  %63 = load i32, i32* @IRQF_SHARED, align 4
  %64 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %65 = call i32 @devm_request_irq(i32 %57, i32 %61, i32 %62, i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.v3d_dev* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %91

69:                                               ; preds = %54
  br label %88

70:                                               ; preds = %39
  %71 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %72 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %74 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %77 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @platform_get_irq(i32 %78, i32 0)
  %80 = load i32, i32* @v3d_irq, align 4
  %81 = load i32, i32* @IRQF_SHARED, align 4
  %82 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %83 = call i32 @devm_request_irq(i32 %75, i32 %79, i32 %80, i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.v3d_dev* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %70
  br label %91

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87, %69
  %89 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %90 = call i32 @v3d_irq_enable(%struct.v3d_dev* %89)
  store i32 0, i32* %2, align 4
  br label %104

91:                                               ; preds = %86, %68, %53
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @EPROBE_DEFER, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %98 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %96, %91
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %88, %37
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @V3D_CORE_WRITE(i32, i32, i32) #1

declare dso_local i32 @V3D_WRITE(i32, i32) #1

declare dso_local i32 @platform_get_irq(i32, i32) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i8*, %struct.v3d_dev*) #1

declare dso_local i32 @v3d_irq_enable(%struct.v3d_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
