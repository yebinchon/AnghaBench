; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-sha.c_padlock_sha256_final_nano.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-sha.c_padlock_sha256_final_nano.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha256_state = type { i32, i64 }

@padlock_sha256_final_nano.padding = internal constant <{ i32, [63 x i32] }> <{ i32 128, [63 x i32] zeroinitializer }>, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @padlock_sha256_final_nano to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @padlock_sha256_final_nano(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sha256_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %10 = call i64 @shash_desc_ctx(%struct.shash_desc* %9)
  %11 = inttoptr i64 %10 to %struct.sha256_state*
  store %struct.sha256_state* %11, %struct.sha256_state** %5, align 8
  %12 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %13 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 %14, 3
  %16 = call i32 @cpu_to_be64(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %18 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 63
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %21, 56
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = sub i32 56, %24
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = sub i32 120, %27
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %25, %23 ], [ %28, %26 ]
  store i32 %30, i32* %7, align 4
  %31 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @padlock_sha256_update_nano(%struct.shash_desc* %31, i32* getelementptr inbounds ([64 x i32], [64 x i32]* bitcast (<{ i32, [63 x i32] }>* @padlock_sha256_final_nano.padding to [64 x i32]*), i64 0, i64 0), i32 %32)
  %34 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %35 = call i32 @padlock_sha256_update_nano(%struct.shash_desc* %34, i32* %8, i32 4)
  %36 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %37 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @padlock_output_block(i32* %39, i32* %40, i32 8)
  ret i32 0
}

declare dso_local i64 @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @padlock_sha256_update_nano(%struct.shash_desc*, i32*, i32) #1

declare dso_local i32 @padlock_output_block(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
