; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_pgm_w_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_pgm_w_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hideep_ts = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pgm_packet = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.i2c_msg = type { i32*, i32, i32 }

@HIDEEP_NVM_PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hideep_ts*, i32, i32*, i64)* @hideep_pgm_w_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hideep_pgm_w_mem(%struct.hideep_ts* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hideep_ts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pgm_packet*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.i2c_msg, align 8
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
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %22 = load %struct.pgm_packet*, %struct.pgm_packet** %10, align 8
  %23 = getelementptr inbounds %struct.pgm_packet, %struct.pgm_packet* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  %26 = load i64, i64* %11, align 8
  %27 = add i64 %26, 4
  %28 = add i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  %31 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %32 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %30, align 4
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @HIDEEP_NVM_PAGE_SIZE, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %80

42:                                               ; preds = %4
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %43, 1
  %45 = or i64 128, %44
  %46 = trunc i64 %45 to i32
  %47 = load %struct.pgm_packet*, %struct.pgm_packet** %10, align 8
  %48 = getelementptr inbounds %struct.pgm_packet, %struct.pgm_packet* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @cpu_to_be32(i32 %50)
  %52 = load %struct.pgm_packet*, %struct.pgm_packet** %10, align 8
  %53 = getelementptr inbounds %struct.pgm_packet, %struct.pgm_packet* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.pgm_packet*, %struct.pgm_packet** %10, align 8
  %56 = getelementptr inbounds %struct.pgm_packet, %struct.pgm_packet* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @memcpy(i32 %57, i32* %58, i64 %59)
  %61 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %62 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @i2c_transfer(i32 %65, %struct.i2c_msg* %12, i32 1)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %79

69:                                               ; preds = %42
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  br label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi i32 [ %73, %72 ], [ %76, %74 ]
  store i32 %78, i32* %5, align 4
  br label %80

79:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %77, %39
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
