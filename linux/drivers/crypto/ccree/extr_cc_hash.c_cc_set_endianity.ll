; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_set_endianity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_set_endianity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_hw_desc = type { i32 }

@DRV_HASH_MD5 = common dso_local global i64 0, align 8
@DRV_HASH_SHA384 = common dso_local global i64 0, align 8
@DRV_HASH_SHA512 = common dso_local global i64 0, align 8
@HASH_DIGEST_RESULT_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.cc_hw_desc*)* @cc_set_endianity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_set_endianity(i64 %0, %struct.cc_hw_desc* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.cc_hw_desc*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.cc_hw_desc* %1, %struct.cc_hw_desc** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @DRV_HASH_MD5, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @DRV_HASH_SHA384, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @DRV_HASH_SHA512, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %8, %2
  %17 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %18 = call i32 @set_bytes_swap(%struct.cc_hw_desc* %17, i32 1)
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %21 = load i32, i32* @HASH_DIGEST_RESULT_LITTLE_ENDIAN, align 4
  %22 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @set_bytes_swap(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
