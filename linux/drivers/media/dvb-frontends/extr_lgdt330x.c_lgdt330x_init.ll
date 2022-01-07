; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt330x.c_lgdt330x_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt330x.c_lgdt330x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.lgdt330x_state* }
%struct.dtv_frontend_properties = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }
%struct.lgdt330x_state = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@lgdt330x_init.lgdt3302_init_data = internal constant [28 x i32] [i32 131, i32 0, i32 130, i32 135, i32 129, i32 142, i32 128, i32 1, i32 134, i32 251, i32 137, i32 64, i32 136, i32 147, i32 135, i32 0, i32 141, i32 198, i32 140, i32 64, i32 143, i32 7, i32 142, i32 254, i32 139, i32 8, i32 138, i32 154], align 16
@lgdt330x_init.lgdt3303_init_data = internal constant [2 x i32] [i32 76, i32 20], align 4
@lgdt330x_init.flip_1_lgdt3303_init_data = internal constant [4 x i32] [i32 76, i32 20, i32 135, i32 243], align 16
@lgdt330x_init.flip_2_lgdt3303_init_data = internal constant [4 x i32] [i32 76, i32 20, i32 135, i32 218], align 16
@.str = private unnamed_addr constant [9 x i8] c"LGDT3302\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"LGDT3303\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Only LGDT3302 and LGDT3303 are supported chips.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Initialized the %s chip\0A\00", align 1
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @lgdt330x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt330x_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.lgdt330x_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  %10 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %9, align 8
  store %struct.lgdt330x_state* %10, %struct.lgdt330x_state** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  store %struct.dtv_frontend_properties* %12, %struct.dtv_frontend_properties** %5, align 8
  %13 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %4, align 8
  %14 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %36 [
    i32 133, label %17
    i32 132, label %20
  ]

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %18 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %4, align 8
  %19 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %18, i32* getelementptr inbounds ([28 x i32], [28 x i32]* @lgdt330x_init.lgdt3302_init_data, i64 0, i64 0), i32 112)
  store i32 %19, i32* %7, align 4
  br label %44

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %21 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %4, align 8
  %22 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %32 [
    i32 2, label %25
    i32 1, label %28
    i32 0, label %31
  ]

25:                                               ; preds = %20
  %26 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %4, align 8
  %27 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %26, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @lgdt330x_init.flip_2_lgdt3303_init_data, i64 0, i64 0), i32 16)
  store i32 %27, i32* %7, align 4
  br label %35

28:                                               ; preds = %20
  %29 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %4, align 8
  %30 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %29, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @lgdt330x_init.flip_1_lgdt3303_init_data, i64 0, i64 0), i32 16)
  store i32 %30, i32* %7, align 4
  br label %35

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %20, %31
  %33 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %4, align 8
  %34 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %33, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @lgdt330x_init.lgdt3303_init_data, i64 0, i64 0), i32 8)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %28, %25
  br label %44

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %37 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %4, align 8
  %38 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = call i32 @dev_warn(i32* %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %36, %35, %17
  %45 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %4, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @dprintk(%struct.lgdt330x_state* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %87

52:                                               ; preds = %44
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %57 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i8* %56, i8** %62, align 8
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %67 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %68 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  store i8* %66, i8** %72, align 8
  %73 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %74 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %77 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  store i8* %76, i8** %82, align 8
  %83 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %4, align 8
  %84 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %4, align 8
  %86 = call i32 @lgdt330x_sw_reset(%struct.lgdt330x_state* %85)
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %52, %50
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @i2c_write_demod_bytes(%struct.lgdt330x_state*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dprintk(%struct.lgdt330x_state*, i8*, i8*) #1

declare dso_local i32 @lgdt330x_sw_reset(%struct.lgdt330x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
