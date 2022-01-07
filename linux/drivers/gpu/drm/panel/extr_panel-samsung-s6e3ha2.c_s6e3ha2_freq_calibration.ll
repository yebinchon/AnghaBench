; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e3ha2.c_s6e3ha2_freq_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e3ha2.c_s6e3ha2_freq_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6e3ha2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HF2_TYPE = common dso_local global i64 0, align 8
@HA2_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s6e3ha2*)* @s6e3ha2_freq_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e3ha2_freq_calibration(%struct.s6e3ha2* %0) #0 {
  %2 = alloca %struct.s6e3ha2*, align 8
  store %struct.s6e3ha2* %0, %struct.s6e3ha2** %2, align 8
  %3 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %4 = call i32 (%struct.s6e3ha2*, i32, i32, ...) @s6e3ha2_dcs_write_seq_static(%struct.s6e3ha2* %3, i32 253, i32 28)
  %5 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %6 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HF2_TYPE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %14 = call i32 (%struct.s6e3ha2*, i32, i32, ...) @s6e3ha2_dcs_write_seq_static(%struct.s6e3ha2* %13, i32 242, i32 103, i32 64, i32 197)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %17 = call i32 (%struct.s6e3ha2*, i32, i32, ...) @s6e3ha2_dcs_write_seq_static(%struct.s6e3ha2* %16, i32 254, i32 32, i32 57)
  %18 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %19 = call i32 (%struct.s6e3ha2*, i32, i32, ...) @s6e3ha2_dcs_write_seq_static(%struct.s6e3ha2* %18, i32 254, i32 160)
  %20 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %21 = call i32 (%struct.s6e3ha2*, i32, i32, ...) @s6e3ha2_dcs_write_seq_static(%struct.s6e3ha2* %20, i32 254, i32 32)
  %22 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %23 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HA2_TYPE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %31 = call i32 (%struct.s6e3ha2*, i32, i32, ...) @s6e3ha2_dcs_write_seq_static(%struct.s6e3ha2* %30, i32 206, i32 3, i32 59, i32 18, i32 98, i32 64, i32 128, i32 192, i32 40, i32 40, i32 40, i32 40, i32 57, i32 197)
  br label %35

32:                                               ; preds = %15
  %33 = load %struct.s6e3ha2*, %struct.s6e3ha2** %2, align 8
  %34 = call i32 (%struct.s6e3ha2*, i32, i32, ...) @s6e3ha2_dcs_write_seq_static(%struct.s6e3ha2* %33, i32 206, i32 3, i32 59, i32 20, i32 109, i32 64, i32 128, i32 192, i32 40, i32 40, i32 40, i32 40, i32 57, i32 197)
  br label %35

35:                                               ; preds = %32, %29
  ret i32 0
}

declare dso_local i32 @s6e3ha2_dcs_write_seq_static(%struct.s6e3ha2*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
