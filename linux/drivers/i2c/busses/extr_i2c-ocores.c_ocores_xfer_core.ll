; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_xfer_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_xfer_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocores_i2c = type { i32, i64, i32, %struct.i2c_msg*, i64 }
%struct.i2c_msg = type { i32 }

@OCI2C_CONTROL = common dso_local global i32 0, align 4
@OCI2C_CTRL_IEN = common dso_local global i32 0, align 4
@STATE_START = common dso_local global i64 0, align 8
@OCI2C_DATA = common dso_local global i32 0, align 4
@OCI2C_CMD = common dso_local global i32 0, align 4
@OCI2C_CMD_START = common dso_local global i32 0, align 4
@STATE_ERROR = common dso_local global i64 0, align 8
@STATE_DONE = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocores_i2c*, %struct.i2c_msg*, i32, i32)* @ocores_xfer_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocores_xfer_core(%struct.ocores_i2c* %0, %struct.i2c_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocores_i2c*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ocores_i2c* %0, %struct.ocores_i2c** %6, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %13 = load i32, i32* @OCI2C_CONTROL, align 4
  %14 = call i32 @oc_getreg(%struct.ocores_i2c* %12, i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %19 = load i32, i32* @OCI2C_CONTROL, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @OCI2C_CTRL_IEN, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @oc_setreg(%struct.ocores_i2c* %18, i32 %19, i32 %23)
  br label %32

25:                                               ; preds = %4
  %26 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %27 = load i32, i32* @OCI2C_CONTROL, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @OCI2C_CTRL_IEN, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @oc_setreg(%struct.ocores_i2c* %26, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %25, %17
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %34 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %35 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %34, i32 0, i32 3
  store %struct.i2c_msg* %33, %struct.i2c_msg** %35, align 8
  %36 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %37 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %40 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* @STATE_START, align 8
  %42 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %43 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %45 = load i32, i32* @OCI2C_DATA, align 4
  %46 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %47 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %46, i32 0, i32 3
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %47, align 8
  %49 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %48)
  %50 = call i32 @oc_setreg(%struct.ocores_i2c* %44, i32 %45, i32 %49)
  %51 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %52 = load i32, i32* @OCI2C_CMD, align 4
  %53 = load i32, i32* @OCI2C_CMD_START, align 4
  %54 = call i32 @oc_setreg(%struct.ocores_i2c* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %32
  %58 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %59 = call i32 @ocores_process_polling(%struct.ocores_i2c* %58)
  br label %88

60:                                               ; preds = %32
  %61 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %62 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %65 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @STATE_ERROR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %60
  %70 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %71 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @STATE_DONE, align 8
  %74 = icmp eq i64 %72, %73
  br label %75

75:                                               ; preds = %69, %60
  %76 = phi i1 [ true, %60 ], [ %74, %69 ]
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* @HZ, align 4
  %79 = call i32 @wait_event_timeout(i32 %63, i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %84 = call i32 @ocores_process_timeout(%struct.ocores_i2c* %83)
  %85 = load i32, i32* @ETIMEDOUT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %101

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %57
  %89 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %90 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @STATE_DONE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  br label %99

96:                                               ; preds = %88
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  br label %99

99:                                               ; preds = %96, %94
  %100 = phi i32 [ %95, %94 ], [ %98, %96 ]
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %82
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @oc_getreg(%struct.ocores_i2c*, i32) #1

declare dso_local i32 @oc_setreg(%struct.ocores_i2c*, i32, i32) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @ocores_process_polling(%struct.ocores_i2c*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @ocores_process_timeout(%struct.ocores_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
