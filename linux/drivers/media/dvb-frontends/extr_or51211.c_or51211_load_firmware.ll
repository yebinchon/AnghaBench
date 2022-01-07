; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_or51211.c_or51211_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_or51211.c_or51211_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.or51211_state* }
%struct.or51211_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.dvb_frontend*)* }
%struct.firmware = type { i32*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Firmware is %zu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"error eprom addr\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"error eprom\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"error 1\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"error 2\0A\00", align 1
@run_buf = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"error 3\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"error 4\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.firmware*)* @or51211_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @or51211_load_firmware(%struct.dvb_frontend* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.or51211_state*, align 8
  %7 = alloca [585 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.or51211_state*, %struct.or51211_state** %10, align 8
  store %struct.or51211_state* %11, %struct.or51211_state** %6, align 8
  %12 = load %struct.firmware*, %struct.firmware** %5, align 8
  %13 = getelementptr inbounds %struct.firmware, %struct.firmware* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [585 x i32], [585 x i32]* %7, i64 0, i64 0
  store i32 17, i32* %16, align 16
  %17 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %18 = getelementptr inbounds [585 x i32], [585 x i32]* %7, i64 0, i64 0
  %19 = call i64 @i2c_writebytes(%struct.or51211_state* %17, i32 80, i32* %18, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %132

23:                                               ; preds = %2
  %24 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %25 = getelementptr inbounds [585 x i32], [585 x i32]* %7, i64 0, i64 145
  %26 = call i64 @i2c_readbytes(%struct.or51211_state* %24, i32 80, i32* %25, i32 192)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %132

30:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 145
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load %struct.firmware*, %struct.firmware** %5, align 8
  %36 = getelementptr inbounds %struct.firmware, %struct.firmware* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [585 x i32], [585 x i32]* %7, i64 0, i64 %43
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %31

48:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 248
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load %struct.firmware*, %struct.firmware** %5, align 8
  %54 = getelementptr inbounds %struct.firmware, %struct.firmware* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 145, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 337
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [585 x i32], [585 x i32]* %7, i64 0, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %49

68:                                               ; preds = %49
  %69 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %70 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %72, align 8
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %75 = call i32 %73(%struct.dvb_frontend* %74)
  %76 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %77 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %78 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds [585 x i32], [585 x i32]* %7, i64 0, i64 0
  %83 = call i64 @i2c_writebytes(%struct.or51211_state* %76, i32 %81, i32* %82, i32 585)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %68
  %86 = call i32 @pr_warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %132

87:                                               ; preds = %68
  %88 = call i32 @msleep(i32 1)
  %89 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %90 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %91 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.firmware*, %struct.firmware** %5, align 8
  %96 = getelementptr inbounds %struct.firmware, %struct.firmware* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 393
  %99 = call i64 @i2c_writebytes(%struct.or51211_state* %89, i32 %94, i32* %98, i32 8125)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %87
  %102 = call i32 @pr_warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %132

103:                                              ; preds = %87
  %104 = call i32 @msleep(i32 1)
  %105 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %106 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %107 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** @run_buf, align 8
  %112 = call i64 @i2c_writebytes(%struct.or51211_state* %105, i32 %110, i32* %111, i32 2)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = call i32 @pr_warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %132

116:                                              ; preds = %103
  %117 = call i32 @msleep(i32 10)
  %118 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %119 = load %struct.or51211_state*, %struct.or51211_state** %6, align 8
  %120 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** @run_buf, align 8
  %125 = call i64 @i2c_writebytes(%struct.or51211_state* %118, i32 %123, i32* %124, i32 2)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %116
  %128 = call i32 @pr_warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %132

129:                                              ; preds = %116
  %130 = call i32 @msleep(i32 10)
  %131 = call i32 @pr_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %129, %127, %114, %101, %85, %28, %21
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i64 @i2c_writebytes(%struct.or51211_state*, i32, i32*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @i2c_readbytes(%struct.or51211_state*, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
