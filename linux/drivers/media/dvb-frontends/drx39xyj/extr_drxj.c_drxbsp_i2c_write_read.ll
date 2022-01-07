; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxbsp_i2c_write_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxbsp_i2c_write_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_addr = type { i32, %struct.drx39xxj_state* }
%struct.drx39xxj_state = type { i32* }
%struct.i2c_msg = type { i32, i8*, i32*, i8* }

@I2C_M_RD = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"i2c was zero, aborting\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"drx3933: I2C write/read failed\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drxbsp_i2c_write_read(%struct.i2c_device_addr* %0, i8* %1, i32* %2, %struct.i2c_device_addr* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_device_addr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.i2c_device_addr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.drx39xxj_state*, align 8
  %15 = alloca [2 x %struct.i2c_msg], align 16
  %16 = alloca i32, align 4
  store %struct.i2c_device_addr* %0, %struct.i2c_device_addr** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.i2c_device_addr* %3, %struct.i2c_device_addr** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %18 = icmp eq %struct.i2c_device_addr* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %6
  %20 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %11, align 8
  %21 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %20, i32 0, i32 1
  %22 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %21, align 8
  store %struct.drx39xxj_state* %22, %struct.drx39xxj_state** %14, align 8
  %23 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %11, align 8
  %24 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 1
  %27 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 0
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 16
  %29 = load i8*, i8** @I2C_M_RD, align 8
  %30 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 0
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 0
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 16
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 0
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  store i32 1, i32* %16, align 4
  br label %93

38:                                               ; preds = %6
  %39 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %11, align 8
  %40 = icmp eq %struct.i2c_device_addr* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %43 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %42, i32 0, i32 1
  %44 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %43, align 8
  store %struct.drx39xxj_state* %44, %struct.drx39xxj_state** %14, align 8
  %45 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %46 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = ashr i32 %47, 1
  %49 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 0
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 16
  %51 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 0
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 3
  store i8* null, i8** %52, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 0
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 16
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 0
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  store i32 1, i32* %16, align 4
  br label %92

59:                                               ; preds = %38
  %60 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %61 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %60, i32 0, i32 1
  %62 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %61, align 8
  store %struct.drx39xxj_state* %62, %struct.drx39xxj_state** %14, align 8
  %63 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %64 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %65, 1
  %67 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 0
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 16
  %69 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 0
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i32 0, i32 3
  store i8* null, i8** %70, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 0
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 16
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 0
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %11, align 8
  %78 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = ashr i32 %79, 1
  %81 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 1
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 16
  %83 = load i8*, i8** @I2C_M_RD, align 8
  %84 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 1
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 1
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 16
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 1
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  store i32 2, i32* %16, align 4
  br label %92

92:                                               ; preds = %59, %41
  br label %93

93:                                               ; preds = %92, %19
  %94 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %14, align 8
  %95 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %114

100:                                              ; preds = %93
  %101 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %14, align 8
  %102 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %15, i64 0, i64 0
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @i2c_transfer(i32* %103, %struct.i2c_msg* %104, i32 %105)
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* @EREMOTEIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %7, align 4
  br label %114

113:                                              ; preds = %100
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %113, %109, %98
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
