; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_send_diseqc_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_send_diseqc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32 }
%struct.dvb_diseqc_master_cmd = type { i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@STB0899_DISCNTRL1 = common dso_local global i32 0, align 4
@DISPRECHARGE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@STB0899_DISFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @stb0899_send_diseqc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_send_diseqc_msg(%struct.dvb_frontend* %0, %struct.dvb_diseqc_master_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %6 = alloca %struct.stb0899_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_diseqc_master_cmd* %1, %struct.dvb_diseqc_master_cmd** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.stb0899_state*, %struct.stb0899_state** %10, align 8
  store %struct.stb0899_state* %11, %struct.stb0899_state** %6, align 8
  %12 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp ugt i64 %15, 8
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %22 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %23 = call i64 @stb0899_read_reg(%struct.stb0899_state* %21, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i32, i32* @DISPRECHARGE, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @STB0899_SETFIELD_VAL(i32 %24, i64 %25, i32 1)
  %27 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %28 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @stb0899_write_reg(%struct.stb0899_state* %27, i32 %28, i64 %29)
  store i64 0, i64* %8, align 8
  br label %31

31:                                               ; preds = %55, %20
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %34 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %32, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %31
  %39 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %40 = call i64 @stb0899_wait_diseqc_fifo_empty(%struct.stb0899_state* %39, i32 100)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %70

45:                                               ; preds = %38
  %46 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %47 = load i32, i32* @STB0899_DISFIFO, align 4
  %48 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @stb0899_write_reg(%struct.stb0899_state* %46, i32 %47, i64 %53)
  br label %55

55:                                               ; preds = %45
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %8, align 8
  br label %31

58:                                               ; preds = %31
  %59 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %60 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %61 = call i64 @stb0899_read_reg(%struct.stb0899_state* %59, i32 %60)
  store i64 %61, i64* %7, align 8
  %62 = load i32, i32* @DISPRECHARGE, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @STB0899_SETFIELD_VAL(i32 %62, i64 %63, i32 0)
  %65 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %66 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @stb0899_write_reg(%struct.stb0899_state* %65, i32 %66, i64 %67)
  %69 = call i32 @msleep(i32 100)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %58, %42, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i64, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i64) #1

declare dso_local i64 @stb0899_wait_diseqc_fifo_empty(%struct.stb0899_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
