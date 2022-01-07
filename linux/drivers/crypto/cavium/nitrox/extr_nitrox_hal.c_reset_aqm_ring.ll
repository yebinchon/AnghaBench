; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_reset_aqm_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_reset_aqm_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }
%union.aqmq_en = type { i8* }
%union.aqmq_activity_stat = type { i8* }
%union.aqmq_cmp_cnt = type { i8* }

@MAX_CSR_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_device*, i32)* @reset_aqm_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_aqm_ring(%struct.nitrox_device* %0, i32 %1) #0 {
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.aqmq_en, align 8
  %6 = alloca %union.aqmq_activity_stat, align 8
  %7 = alloca %union.aqmq_cmp_cnt, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @MAX_CSR_RETRIES, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @AQMQ_ENX(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = bitcast %union.aqmq_en* %5 to i8**
  store i8* null, i8** %13, align 8
  %14 = bitcast %union.aqmq_en* %5 to i64*
  store i64 0, i64* %14, align 8
  %15 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %16 = load i32, i32* %9, align 4
  %17 = bitcast %union.aqmq_en* %5 to i8**
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @nitrox_write_csr(%struct.nitrox_device* %15, i32 %16, i8* %18)
  %20 = call i32 @usleep_range(i32 100, i32 150)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @AQMQ_ACTIVITY_STATX(i32 %21)
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %34, %2
  %24 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i8* @nitrox_read_csr(%struct.nitrox_device* %24, i32 %25)
  %27 = bitcast %union.aqmq_activity_stat* %6 to i8**
  store i8* %26, i8** %27, align 8
  %28 = bitcast %union.aqmq_activity_stat* %6 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %38

32:                                               ; preds = %23
  %33 = call i32 @udelay(i32 50)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %23, label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @AQMQ_CMP_CNTX(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i8* @nitrox_read_csr(%struct.nitrox_device* %41, i32 %42)
  %44 = bitcast %union.aqmq_cmp_cnt* %7 to i8**
  store i8* %43, i8** %44, align 8
  %45 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %46 = load i32, i32* %9, align 4
  %47 = bitcast %union.aqmq_cmp_cnt* %7 to i8**
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @nitrox_write_csr(%struct.nitrox_device* %45, i32 %46, i8* %48)
  %50 = call i32 @usleep_range(i32 50, i32 100)
  ret void
}

declare dso_local i32 @AQMQ_ENX(i32) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @AQMQ_ACTIVITY_STATX(i32) #1

declare dso_local i8* @nitrox_read_csr(%struct.nitrox_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @AQMQ_CMP_CNTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
