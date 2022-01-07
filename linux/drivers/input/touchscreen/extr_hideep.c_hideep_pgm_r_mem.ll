; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_pgm_r_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_pgm_r_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hideep_ts = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pgm_packet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.i2c_msg = type { i32, i64*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@HIDEEP_NVM_PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hideep_ts*, i32, i32*, i64)* @hideep_pgm_r_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hideep_pgm_r_mem(%struct.hideep_ts* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hideep_ts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pgm_packet*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [2 x %struct.i2c_msg], align 16
  %13 = alloca i32, align 4
  store %struct.hideep_ts* %0, %struct.hideep_ts** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %15 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.pgm_packet*
  store %struct.pgm_packet* %18, %struct.pgm_packet** %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = mul i64 %19, 4
  store i64 %20, i64* %11, align 8
  %21 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  store i32 12, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 1
  %24 = load %struct.pgm_packet*, %struct.pgm_packet** %10, align 8
  %25 = getelementptr inbounds %struct.pgm_packet, %struct.pgm_packet* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i64* %26, i64** %23, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 2
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 3
  %29 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %30 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %28, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i64 1
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 0
  %36 = load i64, i64* %11, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %35, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 1
  %39 = load i32*, i32** %8, align 8
  %40 = bitcast i32* %39 to i64*
  store i64* %40, i64** %38, align 8
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 2
  %42 = load i32, i32* @I2C_M_RD, align 4
  store i32 %42, i32* %41, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 3
  %44 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %45 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %43, align 4
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @HIDEEP_NVM_PAGE_SIZE, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %4
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %90

55:                                               ; preds = %4
  %56 = load i64, i64* %9, align 8
  %57 = sub i64 %56, 1
  %58 = load %struct.pgm_packet*, %struct.pgm_packet** %10, align 8
  %59 = getelementptr inbounds %struct.pgm_packet, %struct.pgm_packet* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @cpu_to_be32(i32 %61)
  %63 = load %struct.pgm_packet*, %struct.pgm_packet** %10, align 8
  %64 = getelementptr inbounds %struct.pgm_packet, %struct.pgm_packet* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %67 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %72 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %73 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %72)
  %74 = call i32 @i2c_transfer(i32 %70, %struct.i2c_msg* %71, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %77 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %76)
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %55
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  br label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi i32 [ %83, %82 ], [ %86, %84 ]
  store i32 %88, i32* %5, align 4
  br label %90

89:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %87, %52
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
