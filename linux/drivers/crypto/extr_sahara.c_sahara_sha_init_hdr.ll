; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_init_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_init_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i32 }
%struct.sahara_sha_reqctx = type { i64, i64, i32 }

@SAHARA_HDR_MDHA_SET_MODE_HASH = common dso_local global i32 0, align 4
@SAHARA_HDR_MDHA_INIT = common dso_local global i32 0, align 4
@SAHARA_HDR_MDHA_SET_MODE_MD_KEY = common dso_local global i32 0, align 4
@SAHARA_HDR_MDHA_PDATA = common dso_local global i32 0, align 4
@SAHARA_HDR_PARITY_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sahara_dev*, %struct.sahara_sha_reqctx*)* @sahara_sha_init_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_sha_init_hdr(%struct.sahara_dev* %0, %struct.sahara_sha_reqctx* %1) #0 {
  %3 = alloca %struct.sahara_dev*, align 8
  %4 = alloca %struct.sahara_sha_reqctx*, align 8
  %5 = alloca i32, align 4
  store %struct.sahara_dev* %0, %struct.sahara_dev** %3, align 8
  store %struct.sahara_sha_reqctx* %1, %struct.sahara_sha_reqctx** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %4, align 8
  %7 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %4, align 8
  %10 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @SAHARA_HDR_MDHA_SET_MODE_HASH, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @SAHARA_HDR_MDHA_INIT, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @SAHARA_HDR_MDHA_SET_MODE_MD_KEY, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %4, align 8
  %26 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @SAHARA_HDR_MDHA_PDATA, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @hweight_long(i32 %34)
  %36 = srem i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @SAHARA_HDR_PARITY_BIT, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @hweight_long(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
