; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_jr.c_caam_reset_hw_jr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_jr.c_caam_reset_hw_jr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.caam_drv_private_jr = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@JRCFG_IMSK = common dso_local global i32 0, align 4
@JRCR_RESET = common dso_local global i32 0, align 4
@JRINT_ERR_HALT_MASK = common dso_local global i32 0, align 4
@JRINT_ERR_HALT_INPROGRESS = common dso_local global i32 0, align 4
@JRINT_ERR_HALT_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to flush job ring %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to reset job ring %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @caam_reset_hw_jr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_reset_hw_jr(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.caam_drv_private_jr*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.caam_drv_private_jr* @dev_get_drvdata(%struct.device* %6)
  store %struct.caam_drv_private_jr* %7, %struct.caam_drv_private_jr** %4, align 8
  store i32 100000, i32* %5, align 4
  %8 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %9 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @JRCFG_IMSK, align 4
  %13 = call i32 @clrsetbits_32(i32* %11, i32 0, i32 %12)
  %14 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %15 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* @JRCR_RESET, align 4
  %19 = call i32 @wr_reg32(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %36, %1
  %21 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %22 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = call i32 @rd_reg32(i32* %24)
  %26 = load i32, i32* @JRINT_ERR_HALT_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @JRINT_ERR_HALT_INPROGRESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, -1
  store i32 %32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %30, %20
  %35 = phi i1 [ false, %20 ], [ %33, %30 ]
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = call i32 (...) @cpu_relax()
  br label %20

38:                                               ; preds = %34
  %39 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %40 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = call i32 @rd_reg32(i32* %42)
  %44 = load i32, i32* @JRINT_ERR_HALT_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @JRINT_ERR_HALT_COMPLETE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48, %38
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %54 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %101

59:                                               ; preds = %48
  store i32 100000, i32* %5, align 4
  %60 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %61 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* @JRCR_RESET, align 4
  %65 = call i32 @wr_reg32(i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %81, %59
  %67 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %68 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = call i32 @rd_reg32(i32* %70)
  %72 = load i32, i32* @JRCR_RESET, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, -1
  store i32 %77, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %75, %66
  %80 = phi i1 [ false, %66 ], [ %78, %75 ]
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  %82 = call i32 (...) @cpu_relax()
  br label %66

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.device*, %struct.device** %3, align 8
  %88 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %89 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %101

94:                                               ; preds = %83
  %95 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %96 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* @JRCFG_IMSK, align 4
  %100 = call i32 @clrsetbits_32(i32* %98, i32 %99, i32 0)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %94, %86, %51
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.caam_drv_private_jr* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clrsetbits_32(i32*, i32, i32) #1

declare dso_local i32 @wr_reg32(i32*, i32) #1

declare dso_local i32 @rd_reg32(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
