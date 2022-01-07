; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp2.c_sp2_ci_poll_slot_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp2.c_sp2_ci_poll_slot_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.sp2* }
%struct.sp2 = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"slot:%d open:%d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@SP2_MOD_CTL_DET = common dso_local global i32 0, align 4
@DVB_CA_EN50221_POLL_CAM_PRESENT = common dso_local global i32 0, align 4
@DVB_CA_EN50221_POLL_CAM_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sp2_ci_poll_slot_status(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_en50221*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sp2*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %11, i32 0, i32 0
  %13 = load %struct.sp2*, %struct.sp2** %12, align 8
  store %struct.sp2* %13, %struct.sp2** %8, align 8
  %14 = load %struct.sp2*, %struct.sp2** %8, align 8
  %15 = getelementptr inbounds %struct.sp2, %struct.sp2* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i64, i64* @jiffies, align 8
  %22 = load %struct.sp2*, %struct.sp2** %8, align 8
  %23 = getelementptr inbounds %struct.sp2, %struct.sp2* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @time_after(i64 %21, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %3
  %28 = load %struct.sp2*, %struct.sp2** %8, align 8
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %30 = call i32 @sp2_read_i2c(%struct.sp2* %28, i32 0, i32* %29, i32 1)
  store i32 %30, i32* %10, align 4
  %31 = load i64, i64* @jiffies, align 8
  %32 = call i64 @msecs_to_jiffies(i32 1000)
  %33 = add nsw i64 %31, %32
  %34 = load %struct.sp2*, %struct.sp2** %8, align 8
  %35 = getelementptr inbounds %struct.sp2, %struct.sp2* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %59

39:                                               ; preds = %27
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SP2_MOD_CTL_DET, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_PRESENT, align 4
  %47 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_READY, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.sp2*, %struct.sp2** %8, align 8
  %50 = getelementptr inbounds %struct.sp2, %struct.sp2* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %54

51:                                               ; preds = %39
  %52 = load %struct.sp2*, %struct.sp2** %8, align 8
  %53 = getelementptr inbounds %struct.sp2, %struct.sp2* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %45
  br label %55

55:                                               ; preds = %54, %3
  %56 = load %struct.sp2*, %struct.sp2** %8, align 8
  %57 = getelementptr inbounds %struct.sp2, %struct.sp2* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %38
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @sp2_read_i2c(%struct.sp2*, i32, i32*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
