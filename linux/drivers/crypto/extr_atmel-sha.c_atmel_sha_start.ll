; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, i32, %struct.ahash_request* }
%struct.ahash_request = type { i32 }
%struct.atmel_sha_reqctx = type { i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"handling new req, op: %lu, nbytes: %d\0A\00", align 1
@atmel_sha_done = common dso_local global i32 0, align 4
@SHA_OP_UPDATE = common dso_local global i64 0, align 8
@SHA_FLAGS_FINUP = common dso_local global i32 0, align 4
@SHA_OP_FINAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"exit, err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_start(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_sha_dev*, align 8
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.atmel_sha_reqctx*, align 8
  %6 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %3, align 8
  %7 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %7, i32 0, i32 2
  %9 = load %struct.ahash_request*, %struct.ahash_request** %8, align 8
  store %struct.ahash_request* %9, %struct.ahash_request** %4, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %11 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %10)
  store %struct.atmel_sha_reqctx* %11, %struct.atmel_sha_reqctx** %5, align 8
  %12 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %13 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %5, align 8
  %16 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %20 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %24 = call i32 @atmel_sha_hw_init(%struct.atmel_sha_dev* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @atmel_sha_complete(%struct.atmel_sha_dev* %28, i32 %29)
  store i32 %30, i32* %2, align 4
  br label %80

31:                                               ; preds = %1
  %32 = load i32, i32* @atmel_sha_done, align 4
  %33 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %34 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %5, align 8
  %36 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SHA_OP_UPDATE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %31
  %41 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %42 = call i32 @atmel_sha_update_req(%struct.atmel_sha_dev* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %5, align 8
  %47 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SHA_FLAGS_FINUP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %54 = call i32 @atmel_sha_final_req(%struct.atmel_sha_dev* %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %45, %40
  br label %66

56:                                               ; preds = %31
  %57 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %5, align 8
  %58 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SHA_OP_FINAL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %64 = call i32 @atmel_sha_final_req(%struct.atmel_sha_dev* %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %56
  br label %66

66:                                               ; preds = %65, %55
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @atmel_sha_finish_req(%struct.ahash_request* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %75 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %73, %27
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @atmel_sha_hw_init(%struct.atmel_sha_dev*) #1

declare dso_local i32 @atmel_sha_complete(%struct.atmel_sha_dev*, i32) #1

declare dso_local i32 @atmel_sha_update_req(%struct.atmel_sha_dev*) #1

declare dso_local i32 @atmel_sha_final_req(%struct.atmel_sha_dev*) #1

declare dso_local i32 @atmel_sha_finish_req(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
