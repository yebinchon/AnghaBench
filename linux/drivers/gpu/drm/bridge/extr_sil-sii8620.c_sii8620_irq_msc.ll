; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_irq_msc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_irq_msc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32, i32 }

@REG_CBUS_INT_0 = common dso_local global i32 0, align 4
@BIT_CBUS_HPD_CHG = common dso_local global i32 0, align 4
@REG_CBUS_STATUS = common dso_local global i32 0, align 4
@BIT_CBUS_STATUS_CBUS_HPD = common dso_local global i32 0, align 4
@BIT_CBUS_MSC_MR_WRITE_STAT = common dso_local global i32 0, align 4
@BIT_CBUS_MSC_MR_SET_INT = common dso_local global i32 0, align 4
@BIT_CBUS_MSC_MT_DONE = common dso_local global i32 0, align 4
@BIT_CBUS_MSC_MR_MSC_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_irq_msc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_irq_msc(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %5 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %6 = load i32, i32* @REG_CBUS_INT_0, align 4
  %7 = call i32 @sii8620_readb(%struct.sii8620* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BIT_CBUS_HPD_CHG, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %15 = load i32, i32* @REG_CBUS_INT_0, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @BIT_CBUS_HPD_CHG, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = call i32 @sii8620_write(%struct.sii8620* %14, i32 %15, i32 %19)
  br label %21

21:                                               ; preds = %13, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @BIT_CBUS_HPD_CHG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %21
  %27 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %28 = load i32, i32* @REG_CBUS_STATUS, align 4
  %29 = call i32 @sii8620_readb(%struct.sii8620* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %32 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %30, %33
  %35 = load i32, i32* @BIT_CBUS_STATUS_CBUS_HPD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %40 = load i32, i32* @REG_CBUS_INT_0, align 4
  %41 = load i32, i32* @BIT_CBUS_HPD_CHG, align 4
  %42 = call i32 @sii8620_write(%struct.sii8620* %39, i32 %40, i32 %41)
  br label %50

43:                                               ; preds = %26
  %44 = load i32, i32* @BIT_CBUS_STATUS_CBUS_HPD, align 4
  %45 = load i32, i32* %3, align 4
  %46 = xor i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @BIT_CBUS_STATUS_CBUS_HPD, align 4
  %48 = load i32, i32* %4, align 4
  %49 = xor i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %38
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %53 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %21
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @BIT_CBUS_MSC_MR_WRITE_STAT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %61 = call i32 @sii8620_msc_mr_write_stat(%struct.sii8620* %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @BIT_CBUS_HPD_CHG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %69 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @BIT_CBUS_STATUS_CBUS_HPD, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %76 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %78 = call i32 @sii8620_identify_sink(%struct.sii8620* %77)
  br label %82

79:                                               ; preds = %67
  %80 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %81 = call i32 @sii8620_hpd_unplugged(%struct.sii8620* %80)
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82, %62
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @BIT_CBUS_MSC_MR_SET_INT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %90 = call i32 @sii8620_msc_mr_set_int(%struct.sii8620* %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @BIT_CBUS_MSC_MT_DONE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %98 = call i32 @sii8620_msc_mt_done(%struct.sii8620* %97)
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @BIT_CBUS_MSC_MR_MSC_MSG, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %106 = call i32 @sii8620_msc_mr_msc_msg(%struct.sii8620* %105)
  br label %107

107:                                              ; preds = %104, %99
  ret void
}

declare dso_local i32 @sii8620_readb(%struct.sii8620*, i32) #1

declare dso_local i32 @sii8620_write(%struct.sii8620*, i32, i32) #1

declare dso_local i32 @sii8620_msc_mr_write_stat(%struct.sii8620*) #1

declare dso_local i32 @sii8620_identify_sink(%struct.sii8620*) #1

declare dso_local i32 @sii8620_hpd_unplugged(%struct.sii8620*) #1

declare dso_local i32 @sii8620_msc_mr_set_int(%struct.sii8620*) #1

declare dso_local i32 @sii8620_msc_mt_done(%struct.sii8620*) #1

declare dso_local i32 @sii8620_msc_mr_msc_msg(%struct.sii8620*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
