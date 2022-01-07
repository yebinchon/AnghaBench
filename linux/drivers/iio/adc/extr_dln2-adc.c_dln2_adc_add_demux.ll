; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_dln2-adc.c_dln2_adc_add_demux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_dln2-adc.c_dln2_adc_add_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dln2_adc = type { i32, %struct.dln2_adc_demux_table* }
%struct.dln2_adc_demux_table = type { i32, i32, i32 }

@DLN2_ADC_MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dln2_adc*, i32, i32, i32)* @dln2_adc_add_demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dln2_adc_add_demux(%struct.dln2_adc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dln2_adc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dln2_adc_demux_table*, align 8
  store %struct.dln2_adc* %0, %struct.dln2_adc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.dln2_adc*, %struct.dln2_adc** %5, align 8
  %11 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load %struct.dln2_adc*, %struct.dln2_adc** %5, align 8
  %16 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %15, i32 0, i32 1
  %17 = load %struct.dln2_adc_demux_table*, %struct.dln2_adc_demux_table** %16, align 8
  %18 = load %struct.dln2_adc*, %struct.dln2_adc** %5, align 8
  %19 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dln2_adc_demux_table, %struct.dln2_adc_demux_table* %17, i64 %22
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %14
  %26 = phi %struct.dln2_adc_demux_table* [ %23, %14 ], [ null, %24 ]
  store %struct.dln2_adc_demux_table* %26, %struct.dln2_adc_demux_table** %9, align 8
  %27 = load %struct.dln2_adc_demux_table*, %struct.dln2_adc_demux_table** %9, align 8
  %28 = icmp ne %struct.dln2_adc_demux_table* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load %struct.dln2_adc_demux_table*, %struct.dln2_adc_demux_table** %9, align 8
  %31 = getelementptr inbounds %struct.dln2_adc_demux_table, %struct.dln2_adc_demux_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dln2_adc_demux_table*, %struct.dln2_adc_demux_table** %9, align 8
  %34 = getelementptr inbounds %struct.dln2_adc_demux_table, %struct.dln2_adc_demux_table* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %32, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %29
  %40 = load %struct.dln2_adc_demux_table*, %struct.dln2_adc_demux_table** %9, align 8
  %41 = getelementptr inbounds %struct.dln2_adc_demux_table, %struct.dln2_adc_demux_table* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dln2_adc_demux_table*, %struct.dln2_adc_demux_table** %9, align 8
  %44 = getelementptr inbounds %struct.dln2_adc_demux_table, %struct.dln2_adc_demux_table* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %42, %45
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.dln2_adc_demux_table*, %struct.dln2_adc_demux_table** %9, align 8
  %52 = getelementptr inbounds %struct.dln2_adc_demux_table, %struct.dln2_adc_demux_table* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %81

55:                                               ; preds = %39, %29, %25
  %56 = load %struct.dln2_adc*, %struct.dln2_adc** %5, align 8
  %57 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @DLN2_ADC_MAX_CHANNELS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  %62 = load %struct.dln2_adc*, %struct.dln2_adc** %5, align 8
  %63 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %62, i32 0, i32 1
  %64 = load %struct.dln2_adc_demux_table*, %struct.dln2_adc_demux_table** %63, align 8
  %65 = load %struct.dln2_adc*, %struct.dln2_adc** %5, align 8
  %66 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.dln2_adc_demux_table, %struct.dln2_adc_demux_table* %64, i64 %69
  store %struct.dln2_adc_demux_table* %70, %struct.dln2_adc_demux_table** %9, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.dln2_adc_demux_table*, %struct.dln2_adc_demux_table** %9, align 8
  %73 = getelementptr inbounds %struct.dln2_adc_demux_table, %struct.dln2_adc_demux_table* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.dln2_adc_demux_table*, %struct.dln2_adc_demux_table** %9, align 8
  %76 = getelementptr inbounds %struct.dln2_adc_demux_table, %struct.dln2_adc_demux_table* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.dln2_adc_demux_table*, %struct.dln2_adc_demux_table** %9, align 8
  %79 = getelementptr inbounds %struct.dln2_adc_demux_table, %struct.dln2_adc_demux_table* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %61, %55
  br label %81

81:                                               ; preds = %80, %49
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
