; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_generate_copy_rrkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_generate_copy_rrkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablk_ctx = type { i64, i32, i64, i64 }
%struct._key_ctx = type { i64 }

@CHCR_SCMD_CIPHER_MODE_AES_CBC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablk_ctx*, %struct._key_ctx*)* @generate_copy_rrkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_copy_rrkey(%struct.ablk_ctx* %0, %struct._key_ctx* %1) #0 {
  %3 = alloca %struct.ablk_ctx*, align 8
  %4 = alloca %struct._key_ctx*, align 8
  store %struct.ablk_ctx* %0, %struct.ablk_ctx** %3, align 8
  store %struct._key_ctx* %1, %struct._key_ctx** %4, align 8
  %5 = load %struct.ablk_ctx*, %struct.ablk_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CHCR_SCMD_CIPHER_MODE_AES_CBC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct._key_ctx*, %struct._key_ctx** %4, align 8
  %12 = getelementptr inbounds %struct._key_ctx, %struct._key_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ablk_ctx*, %struct.ablk_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ablk_ctx*, %struct.ablk_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @memcpy(i64 %13, i64 %16, i32 %19)
  br label %56

21:                                               ; preds = %2
  %22 = load %struct._key_ctx*, %struct._key_ctx** %4, align 8
  %23 = getelementptr inbounds %struct._key_ctx, %struct._key_ctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ablk_ctx*, %struct.ablk_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ablk_ctx*, %struct.ablk_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %27, %32
  %34 = load %struct.ablk_ctx*, %struct.ablk_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 1
  %38 = call i32 @memcpy(i64 %24, i64 %33, i32 %37)
  %39 = load %struct._key_ctx*, %struct._key_ctx** %4, align 8
  %40 = getelementptr inbounds %struct._key_ctx, %struct._key_ctx* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ablk_ctx*, %struct.ablk_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %41, %46
  %48 = load %struct.ablk_ctx*, %struct.ablk_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ablk_ctx*, %struct.ablk_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = ashr i32 %53, 1
  %55 = call i32 @memcpy(i64 %47, i64 %50, i32 %54)
  br label %56

56:                                               ; preds = %21, %10
  ret i32 0
}

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
