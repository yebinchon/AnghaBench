; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_hash_dev = type { i32, i32 }
%struct.img_hash_request_ctx = type { i32 }

@IMG_HASH_BYTE_ORDER = common dso_local global i32 0, align 4
@CR_CONTROL_BYTE_ORDER_SHIFT = common dso_local global i32 0, align 4
@DRIVER_FLAGS_MD5 = common dso_local global i32 0, align 4
@CR_CONTROL_ALGO_MD5 = common dso_local global i32 0, align 4
@DRIVER_FLAGS_SHA1 = common dso_local global i32 0, align 4
@CR_CONTROL_ALGO_SHA1 = common dso_local global i32 0, align 4
@DRIVER_FLAGS_SHA224 = common dso_local global i32 0, align 4
@CR_CONTROL_ALGO_SHA224 = common dso_local global i32 0, align 4
@DRIVER_FLAGS_SHA256 = common dso_local global i32 0, align 4
@CR_CONTROL_ALGO_SHA256 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Starting hash process\0A\00", align 1
@CR_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_hash_dev*, i32)* @img_hash_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_hash_start(%struct.img_hash_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.img_hash_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.img_hash_request_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.img_hash_dev* %0, %struct.img_hash_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %8 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.img_hash_request_ctx* @ahash_request_ctx(i32 %9)
  store %struct.img_hash_request_ctx* %10, %struct.img_hash_request_ctx** %5, align 8
  %11 = load i32, i32* @IMG_HASH_BYTE_ORDER, align 4
  %12 = load i32, i32* @CR_CONTROL_BYTE_ORDER_SHIFT, align 4
  %13 = shl i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DRIVER_FLAGS_MD5, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @CR_CONTROL_ALGO_MD5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %60

24:                                               ; preds = %2
  %25 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DRIVER_FLAGS_SHA1, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @CR_CONTROL_ALGO_SHA1, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %59

35:                                               ; preds = %24
  %36 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DRIVER_FLAGS_SHA224, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @CR_CONTROL_ALGO_SHA224, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %58

46:                                               ; preds = %35
  %47 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DRIVER_FLAGS_SHA256, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @CR_CONTROL_ALGO_SHA256, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %46
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %31
  br label %60

60:                                               ; preds = %59, %20
  %61 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %62 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %66 = load i32, i32* @CR_CONTROL, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @img_hash_write(%struct.img_hash_dev* %65, i32 %66, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %60
  %72 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %73 = load i32, i32* @CR_CONTROL, align 4
  %74 = call i32 @img_hash_read(%struct.img_hash_dev* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %60
  ret void
}

declare dso_local %struct.img_hash_request_ctx* @ahash_request_ctx(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @img_hash_write(%struct.img_hash_dev*, i32, i32) #1

declare dso_local i32 @img_hash_read(%struct.img_hash_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
