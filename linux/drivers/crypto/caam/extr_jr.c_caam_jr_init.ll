; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_jr.c_caam_jr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_jr.c_caam_jr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.caam_drv_private_jr = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32, i64, i64, i64, %struct.TYPE_4__*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@SIZEOF_JR_INPENTRY = common dso_local global i32 0, align 4
@JOBR_DEPTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIZEOF_JR_OUTENTRY = common dso_local global i32 0, align 4
@JOBR_INTC = common dso_local global i32 0, align 4
@JOBR_INTC_COUNT_THLD = common dso_local global i32 0, align 4
@JRCFG_ICDCT_SHIFT = common dso_local global i32 0, align 4
@JOBR_INTC_TIME_THLD = common dso_local global i32 0, align 4
@JRCFG_ICTT_SHIFT = common dso_local global i32 0, align 4
@caam_jr_dequeue = common dso_local global i32 0, align 4
@caam_jr_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"can't connect JobR %d interrupt (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @caam_jr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_jr_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.caam_drv_private_jr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.caam_drv_private_jr* @dev_get_drvdata(%struct.device* %9)
  store %struct.caam_drv_private_jr* %10, %struct.caam_drv_private_jr** %4, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @caam_reset_hw_jr(%struct.device* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %2, align 4
  br label %162

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load i32, i32* @SIZEOF_JR_INPENTRY, align 4
  %20 = load i32, i32* @JOBR_DEPTH, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @dmam_alloc_coherent(%struct.device* %18, i32 %21, i32* %5, i32 %22)
  %24 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %25 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %24, i32 0, i32 11
  store i8* %23, i8** %25, align 8
  %26 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %27 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %26, i32 0, i32 11
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %17
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %162

33:                                               ; preds = %17
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = load i32, i32* @SIZEOF_JR_OUTENTRY, align 4
  %36 = load i32, i32* @JOBR_DEPTH, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @dmam_alloc_coherent(%struct.device* %34, i32 %37, i32* %6, i32 %38)
  %40 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %41 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %40, i32 0, i32 10
  store i8* %39, i8** %41, align 8
  %42 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %43 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %42, i32 0, i32 10
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %162

49:                                               ; preds = %33
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = load i32, i32* @JOBR_DEPTH, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.TYPE_4__* @devm_kcalloc(%struct.device* %50, i32 %51, i32 4, i32 %52)
  %54 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %55 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %54, i32 0, i32 9
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %55, align 8
  %56 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %57 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %56, i32 0, i32 9
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %162

63:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %76, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @JOBR_DEPTH, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %70 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %69, i32 0, i32 9
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %64

79:                                               ; preds = %64
  %80 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %81 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %80, i32 0, i32 8
  store i64 0, i64* %81, align 8
  %82 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %83 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %82, i32 0, i32 7
  store i64 0, i64* %83, align 8
  %84 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %85 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  %86 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %87 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %86, i32 0, i32 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @wr_reg64(i32* %89, i32 %90)
  %92 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %93 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %92, i32 0, i32 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @wr_reg64(i32* %95, i32 %96)
  %98 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %99 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %98, i32 0, i32 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* @JOBR_DEPTH, align 4
  %103 = call i32 @wr_reg32(i32* %101, i32 %102)
  %104 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %105 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %104, i32 0, i32 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* @JOBR_DEPTH, align 4
  %109 = call i32 @wr_reg32(i32* %107, i32 %108)
  %110 = load i32, i32* @JOBR_DEPTH, align 4
  %111 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %112 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %114 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %113, i32 0, i32 5
  %115 = call i32 @spin_lock_init(i32* %114)
  %116 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %117 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %116, i32 0, i32 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* @JOBR_INTC, align 4
  %121 = load i32, i32* @JOBR_INTC_COUNT_THLD, align 4
  %122 = load i32, i32* @JRCFG_ICDCT_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = or i32 %120, %123
  %125 = load i32, i32* @JOBR_INTC_TIME_THLD, align 4
  %126 = load i32, i32* @JRCFG_ICTT_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = or i32 %124, %127
  %129 = call i32 @clrsetbits_32(i32* %119, i32 0, i32 %128)
  %130 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %131 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %130, i32 0, i32 1
  %132 = load i32, i32* @caam_jr_dequeue, align 4
  %133 = load %struct.device*, %struct.device** %3, align 8
  %134 = ptrtoint %struct.device* %133 to i64
  %135 = call i32 @tasklet_init(i32* %131, i32 %132, i64 %134)
  %136 = load %struct.device*, %struct.device** %3, align 8
  %137 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %138 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @caam_jr_interrupt, align 4
  %141 = load i32, i32* @IRQF_SHARED, align 4
  %142 = load %struct.device*, %struct.device** %3, align 8
  %143 = call i32 @dev_name(%struct.device* %142)
  %144 = load %struct.device*, %struct.device** %3, align 8
  %145 = call i32 @devm_request_irq(%struct.device* %136, i32 %139, i32 %140, i32 %141, i32 %143, %struct.device* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %79
  %149 = load %struct.device*, %struct.device** %3, align 8
  %150 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %151 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %154 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @dev_err(%struct.device* %149, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %152, i32 %155)
  %157 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %4, align 8
  %158 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %157, i32 0, i32 1
  %159 = call i32 @tasklet_kill(i32* %158)
  br label %160

160:                                              ; preds = %148, %79
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %160, %60, %46, %30, %15
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.caam_drv_private_jr* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @caam_reset_hw_jr(%struct.device*) #1

declare dso_local i8* @dmam_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @wr_reg64(i32*, i32) #1

declare dso_local i32 @wr_reg32(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @clrsetbits_32(i32*, i32, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.device*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
