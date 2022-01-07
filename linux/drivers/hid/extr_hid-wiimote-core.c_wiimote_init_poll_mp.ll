; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_init_poll_mp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_init_poll_mp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"detected extension: Nintendo Wii Motion Plus\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*)* @wiimote_init_poll_mp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimote_init_poll_mp(%struct.wiimote_data* %0) #0 {
  %2 = alloca %struct.wiimote_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [6 x i32], align 16
  store %struct.wiimote_data* %0, %struct.wiimote_data** %2, align 8
  %5 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %6 = call i32 @wiimote_cmd_acquire_noint(%struct.wiimote_data* %5)
  %7 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %8 = call i32 @wiimote_cmd_init_mp(%struct.wiimote_data* %7)
  %9 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %11 = call i32 @wiimote_cmd_read_mp(%struct.wiimote_data* %9, i32* %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %13 = call i32 @wiimote_cmd_release(%struct.wiimote_data* %12)
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %18 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %24 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @hid_info(i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %28 = call i32 @wiimote_mp_load(%struct.wiimote_data* %27)
  br label %29

29:                                               ; preds = %22, %16
  br label %40

30:                                               ; preds = %1
  %31 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %32 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %38 = call i32 @wiimote_mp_unload(%struct.wiimote_data* %37)
  br label %39

39:                                               ; preds = %36, %30
  br label %40

40:                                               ; preds = %39, %29
  %41 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %42 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %41, i32 0, i32 0
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i32, i32* @HZ, align 4
  %45 = mul nsw i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = call i32 @mod_timer(i32* %42, i64 %47)
  ret void
}

declare dso_local i32 @wiimote_cmd_acquire_noint(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_cmd_init_mp(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_cmd_read_mp(%struct.wiimote_data*, i32*) #1

declare dso_local i32 @wiimote_cmd_release(%struct.wiimote_data*) #1

declare dso_local i32 @hid_info(i32, i8*) #1

declare dso_local i32 @wiimote_mp_load(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_mp_unload(%struct.wiimote_data*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
