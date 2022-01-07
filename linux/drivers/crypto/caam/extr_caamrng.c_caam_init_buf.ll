; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamrng.c_caam_init_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamrng.c_caam_init_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_rng_ctx = type { i32, %struct.buf_data* }
%struct.buf_data = type { i32, i32 }

@BUF_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.caam_rng_ctx*, i32)* @caam_init_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_init_buf(%struct.caam_rng_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.caam_rng_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buf_data*, align 8
  %7 = alloca i32, align 4
  store %struct.caam_rng_ctx* %0, %struct.caam_rng_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %8, i32 0, i32 1
  %10 = load %struct.buf_data*, %struct.buf_data** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %10, i64 %12
  store %struct.buf_data* %13, %struct.buf_data** %6, align 8
  %14 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @rng_create_job_desc(%struct.caam_rng_ctx* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.buf_data*, %struct.buf_data** %6, align 8
  %23 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %22, i32 0, i32 1
  %24 = load i32, i32* @BUF_EMPTY, align 4
  %25 = call i32 @atomic_set(i32* %23, i32 %24)
  %26 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @submit_job(%struct.caam_rng_ctx* %26, i32 %32)
  %34 = load %struct.buf_data*, %struct.buf_data** %6, align 8
  %35 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %34, i32 0, i32 0
  %36 = call i32 @wait_for_completion(i32* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %21, %19
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @rng_create_job_desc(%struct.caam_rng_ctx*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @submit_job(%struct.caam_rng_ctx*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
