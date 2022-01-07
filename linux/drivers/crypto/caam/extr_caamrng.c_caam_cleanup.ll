; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamrng.c_caam_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamrng.c_caam_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.buf_data* }
%struct.buf_data = type { i32, i32 }
%struct.hwrng = type { i32 }

@rng_ctx = common dso_local global %struct.TYPE_3__* null, align 8
@BUF_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hwrng*)* @caam_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @caam_cleanup(%struct.hwrng* %0) #0 {
  %2 = alloca %struct.hwrng*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.buf_data*, align 8
  store %struct.hwrng* %0, %struct.hwrng** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rng_ctx, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.buf_data*, %struct.buf_data** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %11, i64 %13
  store %struct.buf_data* %14, %struct.buf_data** %4, align 8
  %15 = load %struct.buf_data*, %struct.buf_data** %4, align 8
  %16 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %15, i32 0, i32 1
  %17 = call i64 @atomic_read(i32* %16)
  %18 = load i64, i64* @BUF_PENDING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %8
  %21 = load %struct.buf_data*, %struct.buf_data** %4, align 8
  %22 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %21, i32 0, i32 0
  %23 = call i32 @wait_for_completion(i32* %22)
  br label %24

24:                                               ; preds = %20, %8
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

28:                                               ; preds = %5
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rng_ctx, align 8
  %30 = call i32 @rng_unmap_ctx(%struct.TYPE_3__* %29)
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @rng_unmap_ctx(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
