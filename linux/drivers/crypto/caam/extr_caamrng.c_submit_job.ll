; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamrng.c_submit_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamrng.c_submit_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_rng_ctx = type { i32, %struct.device*, %struct.buf_data* }
%struct.device = type { i32 }
%struct.buf_data = type { i32, i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"submitting job %d\0A\00", align 1
@rng_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.caam_rng_ctx*, i32)* @submit_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_job(%struct.caam_rng_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.caam_rng_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buf_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.caam_rng_ctx* %0, %struct.caam_rng_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %9, i32 0, i32 2
  %11 = load %struct.buf_data*, %struct.buf_data** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = xor i32 %12, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %11, i64 %20
  store %struct.buf_data* %21, %struct.buf_data** %5, align 8
  %22 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %22, i32 0, i32 1
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %6, align 8
  %25 = load %struct.buf_data*, %struct.buf_data** %5, align 8
  %26 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %7, align 8
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = xor i32 %29, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.buf_data*, %struct.buf_data** %5, align 8
  %39 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %38, i32 0, i32 1
  %40 = call i32 @init_completion(i32* %39)
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @rng_done, align 4
  %44 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %3, align 8
  %45 = call i32 @caam_jr_enqueue(%struct.device* %41, i32* %42, i32 %43, %struct.caam_rng_ctx* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %2
  %49 = load %struct.buf_data*, %struct.buf_data** %5, align 8
  %50 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %49, i32 0, i32 1
  %51 = call i32 @complete(i32* %50)
  br label %56

52:                                               ; preds = %2
  %53 = load %struct.buf_data*, %struct.buf_data** %5, align 8
  %54 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %53, i32 0, i32 0
  %55 = call i32 @atomic_inc(i32* %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @caam_jr_enqueue(%struct.device*, i32*, i32, %struct.caam_rng_ctx*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
