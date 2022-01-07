; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt1211.c_vt1211_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt1211.c_vt1211_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt1211_data = type { i32, i32**, i32 }

@VT1211_REG_UCH_CONFIG = common dso_local global i32 0, align 4
@uch_config = common dso_local global i32 0, align 4
@int_mode = common dso_local global i64 0, align 8
@VT1211_REG_TEMP1_CONFIG = common dso_local global i32 0, align 4
@VT1211_REG_TEMP2_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt1211_data*)* @vt1211_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt1211_init_device(%struct.vt1211_data* %0) #0 {
  %2 = alloca %struct.vt1211_data*, align 8
  store %struct.vt1211_data* %0, %struct.vt1211_data** %2, align 8
  %3 = call i32 (...) @vid_which_vrm()
  %4 = load %struct.vt1211_data*, %struct.vt1211_data** %2, align 8
  %5 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %4, i32 0, i32 2
  store i32 %3, i32* %5, align 8
  %6 = load %struct.vt1211_data*, %struct.vt1211_data** %2, align 8
  %7 = load i32, i32* @VT1211_REG_UCH_CONFIG, align 4
  %8 = call i32 @vt1211_read8(%struct.vt1211_data* %6, i32 %7)
  %9 = load %struct.vt1211_data*, %struct.vt1211_data** %2, align 8
  %10 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @uch_config, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.vt1211_data*, %struct.vt1211_data** %2, align 8
  %15 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 131
  %18 = load i32, i32* @uch_config, align 4
  %19 = shl i32 %18, 2
  %20 = or i32 %17, %19
  %21 = load %struct.vt1211_data*, %struct.vt1211_data** %2, align 8
  %22 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.vt1211_data*, %struct.vt1211_data** %2, align 8
  %24 = load i32, i32* @VT1211_REG_UCH_CONFIG, align 4
  %25 = load %struct.vt1211_data*, %struct.vt1211_data** %2, align 8
  %26 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @vt1211_write8(%struct.vt1211_data* %23, i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %13, %1
  %30 = load i64, i64* @int_mode, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.vt1211_data*, %struct.vt1211_data** %2, align 8
  %34 = load i32, i32* @VT1211_REG_TEMP1_CONFIG, align 4
  %35 = call i32 @vt1211_write8(%struct.vt1211_data* %33, i32 %34, i32 0)
  %36 = load %struct.vt1211_data*, %struct.vt1211_data** %2, align 8
  %37 = load i32, i32* @VT1211_REG_TEMP2_CONFIG, align 4
  %38 = call i32 @vt1211_write8(%struct.vt1211_data* %36, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %32, %29
  %40 = load %struct.vt1211_data*, %struct.vt1211_data** %2, align 8
  %41 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 255, i32* %45, align 4
  %46 = load %struct.vt1211_data*, %struct.vt1211_data** %2, align 8
  %47 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 255, i32* %51, align 4
  ret void
}

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @vt1211_read8(%struct.vt1211_data*, i32) #1

declare dso_local i32 @vt1211_write8(%struct.vt1211_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
