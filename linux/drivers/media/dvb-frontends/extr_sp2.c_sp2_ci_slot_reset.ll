; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp2.c_sp2_ci_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp2.c_sp2_ci_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.sp2* }
%struct.sp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"slot: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SP2_MOD_CTL_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sp2_ci_slot_reset(%struct.dvb_ca_en50221* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_ca_en50221*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sp2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %9, i32 0, i32 0
  %11 = load %struct.sp2*, %struct.sp2** %10, align 8
  store %struct.sp2* %11, %struct.sp2** %6, align 8
  %12 = load %struct.sp2*, %struct.sp2** %6, align 8
  %13 = getelementptr inbounds %struct.sp2, %struct.sp2* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %2
  %24 = load i32, i32* @SP2_MOD_CTL_RST, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.sp2*, %struct.sp2** %6, align 8
  %26 = call i32 @sp2_write_i2c(%struct.sp2* %25, i32 0, i32* %7, i32 1)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %41

31:                                               ; preds = %23
  %32 = call i32 @usleep_range(i32 500, i32 600)
  store i32 0, i32* %7, align 4
  %33 = load %struct.sp2*, %struct.sp2** %6, align 8
  %34 = call i32 @sp2_write_i2c(%struct.sp2* %33, i32 0, i32* %7, i32 1)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %31
  %40 = call i32 @msleep(i32 1000)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %37, %29, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @sp2_write_i2c(%struct.sp2*, i32, i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
