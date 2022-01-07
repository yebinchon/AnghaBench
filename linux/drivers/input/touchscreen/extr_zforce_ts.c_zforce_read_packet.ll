; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_read_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zforce_ts = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"error reading header: %d\0A\00", align 1
@PAYLOAD_HEADER = common dso_local global i64 0, align 8
@FRAME_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid frame start: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PAYLOAD_LENGTH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid payload length: %d\0A\00", align 1
@PAYLOAD_BODY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"error reading payload: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"read %d bytes for response command 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zforce_ts*, i32*)* @zforce_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zforce_read_packet(%struct.zforce_ts* %0, i32* %1) #0 {
  %3 = alloca %struct.zforce_ts*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  store %struct.zforce_ts* %0, %struct.zforce_ts** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %8 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %7, i32 0, i32 1
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  %10 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %11 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @i2c_master_recv(%struct.i2c_client* %13, i32* %14, i32 2)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %84

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* @PAYLOAD_HEADER, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FRAME_START, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %84

39:                                               ; preds = %23
  %40 = load i32*, i32** %4, align 8
  %41 = load i64, i64* @PAYLOAD_LENGTH, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32*, i32** %4, align 8
  %49 = load i64, i64* @PAYLOAD_LENGTH, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %84

55:                                               ; preds = %39
  %56 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i64, i64* @PAYLOAD_BODY, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32*, i32** %4, align 8
  %61 = load i64, i64* @PAYLOAD_LENGTH, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @i2c_master_recv(%struct.i2c_client* %56, i32* %59, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %55
  %68 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %84

72:                                               ; preds = %55
  %73 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = load i32*, i32** %4, align 8
  %76 = load i64, i64* @PAYLOAD_LENGTH, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = load i64, i64* @PAYLOAD_BODY, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_dbg(i32* %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %78, i32 %82)
  br label %84

84:                                               ; preds = %72, %67, %45, %30, %18
  %85 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %86 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
