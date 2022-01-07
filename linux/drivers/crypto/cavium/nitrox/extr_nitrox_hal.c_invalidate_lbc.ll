; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_invalidate_lbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_invalidate_lbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }
%union.lbc_inval_ctl = type { i8* }
%union.lbc_inval_status = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@MAX_CSR_RETRIES = common dso_local global i32 0, align 4
@LBC_INVAL_CTL = common dso_local global i32 0, align 4
@LBC_INVAL_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invalidate_lbc(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca %union.lbc_inval_ctl, align 8
  %4 = alloca %union.lbc_inval_status, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  %7 = load i32, i32* @MAX_CSR_RETRIES, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @LBC_INVAL_CTL, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i8* @nitrox_read_csr(%struct.nitrox_device* %9, i32 %10)
  %12 = bitcast %union.lbc_inval_ctl* %3 to i8**
  store i8* %11, i8** %12, align 8
  %13 = bitcast %union.lbc_inval_ctl* %3 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %16 = load i32, i32* %6, align 4
  %17 = bitcast %union.lbc_inval_ctl* %3 to i8**
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @nitrox_write_csr(%struct.nitrox_device* %15, i32 %16, i8* %18)
  %20 = load i32, i32* @LBC_INVAL_STATUS, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %33, %1
  %22 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @nitrox_read_csr(%struct.nitrox_device* %22, i32 %23)
  %25 = bitcast %union.lbc_inval_status* %4 to i8**
  store i8* %24, i8** %25, align 8
  %26 = bitcast %union.lbc_inval_status* %4 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %37

31:                                               ; preds = %21
  %32 = call i32 @udelay(i32 50)
  br label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %21, label %37

37:                                               ; preds = %33, %30
  ret void
}

declare dso_local i8* @nitrox_read_csr(%struct.nitrox_device*, i32) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
