; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_irq.c_v3d_hub_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_irq.c_v3d_hub_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.v3d_fence = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@V3D_HUB_INT_STS = common dso_local global i32 0, align 4
@V3D_HUB_INT_CLR = common dso_local global i32 0, align 4
@V3D_HUB_INT_TFUC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@V3D_HUB_INT_MMU_WRV = common dso_local global i32 0, align 4
@V3D_HUB_INT_MMU_PTI = common dso_local global i32 0, align 4
@V3D_HUB_INT_MMU_CAP = common dso_local global i32 0, align 4
@V3D_MMU_VIO_ID = common dso_local global i32 0, align 4
@V3D_MMU_VIO_ADDR = common dso_local global i32 0, align 4
@v3d_hub_irq.v3d41_axi_ids = internal constant [8 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"L2T\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PTB\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PSE\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"TLB\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CLE\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"TFU\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"MMU\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"GMP\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@V3D_MMU_CTL = common dso_local global i32 0, align 4
@V3D_MMU_CTL_CAP_EXCEEDED = common dso_local global i32 0, align 4
@V3D_MMU_CTL_PT_INVALID = common dso_local global i32 0, align 4
@V3D_MMU_CTL_WRITE_VIOLATION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"MMU error from client %s (%d) at 0x%llx%s%s%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c", write violation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [14 x i8] c", pte invalid\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c", cap exceeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @v3d_hub_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3d_hub_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.v3d_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v3d_fence*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.v3d_dev*
  store %struct.v3d_dev* %13, %struct.v3d_dev** %5, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @V3D_HUB_INT_STS, align 4
  %16 = call i32 @V3D_READ(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @V3D_HUB_INT_CLR, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @V3D_WRITE(i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @V3D_HUB_INT_TFUC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %2
  %25 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %26 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.v3d_fence* @to_v3d_fence(i32 %30)
  store %struct.v3d_fence* %31, %struct.v3d_fence** %8, align 8
  %32 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %33 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %32, i32 0, i32 3
  %34 = load %struct.v3d_fence*, %struct.v3d_fence** %8, align 8
  %35 = getelementptr inbounds %struct.v3d_fence, %struct.v3d_fence* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @trace_v3d_tfu_irq(i32* %33, i32 %36)
  %38 = load %struct.v3d_fence*, %struct.v3d_fence** %8, align 8
  %39 = getelementptr inbounds %struct.v3d_fence, %struct.v3d_fence* %38, i32 0, i32 0
  %40 = call i32 @dma_fence_signal(i32* %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %24, %2
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @V3D_HUB_INT_MMU_WRV, align 4
  %45 = load i32, i32* @V3D_HUB_INT_MMU_PTI, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @V3D_HUB_INT_MMU_CAP, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %43, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %115

51:                                               ; preds = %42
  %52 = load i32, i32* @V3D_MMU_VIO_ID, align 4
  %53 = call i32 @V3D_READ(i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @V3D_MMU_VIO_ADDR, align 4
  %55 = call i32 @V3D_READ(i32 %54)
  %56 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %57 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 32
  %60 = shl i32 %55, %59
  store i32 %60, i32* %10, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  %61 = load i32, i32* @V3D_MMU_CTL, align 4
  %62 = load i32, i32* @V3D_MMU_CTL, align 4
  %63 = call i32 @V3D_READ(i32 %62)
  %64 = load i32, i32* @V3D_MMU_CTL_CAP_EXCEEDED, align 4
  %65 = load i32, i32* @V3D_MMU_CTL_PT_INVALID, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @V3D_MMU_CTL_WRITE_VIOLATION, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %63, %68
  %70 = call i32 @V3D_WRITE(i32 %61, i32 %69)
  %71 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %72 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %73, 41
  br i1 %74, label %75, label %87

75:                                               ; preds = %51
  %76 = load i32, i32* %9, align 4
  %77 = ashr i32 %76, 5
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @v3d_hub_irq.v3d41_axi_ids, i64 0, i64 0))
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i8*], [8 x i8*]* @v3d_hub_irq.v3d41_axi_ids, i64 0, i64 %83
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %11, align 8
  br label %86

86:                                               ; preds = %81, %75
  br label %87

87:                                               ; preds = %86, %51
  %88 = load %struct.v3d_dev*, %struct.v3d_dev** %5, align 8
  %89 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @V3D_HUB_INT_MMU_WRV, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @V3D_HUB_INT_MMU_PTI, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @V3D_HUB_INT_MMU_CAP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %113 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %91, i32 %92, i64 %94, i8* %100, i8* %106, i8* %112)
  %114 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %87, %42
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @V3D_READ(i32) #1

declare dso_local i32 @V3D_WRITE(i32, i32) #1

declare dso_local %struct.v3d_fence* @to_v3d_fence(i32) #1

declare dso_local i32 @trace_v3d_tfu_irq(i32*, i32) #1

declare dso_local i32 @dma_fence_signal(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
