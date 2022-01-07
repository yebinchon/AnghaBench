; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_copy_digest_to_dst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_copy_digest_to_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd_uinfo = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.crypto4xx_ctx = type { i64 }
%struct.dynamic_sa_ctl = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SA_HASH_ALG_SHA1 = common dso_local global i64 0, align 8
@SA_HASH_ALG_SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.pd_uinfo*, %struct.crypto4xx_ctx*)* @crypto4xx_copy_digest_to_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto4xx_copy_digest_to_dst(i8* %0, %struct.pd_uinfo* %1, %struct.crypto4xx_ctx* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pd_uinfo*, align 8
  %6 = alloca %struct.crypto4xx_ctx*, align 8
  %7 = alloca %struct.dynamic_sa_ctl*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pd_uinfo* %1, %struct.pd_uinfo** %5, align 8
  store %struct.crypto4xx_ctx* %2, %struct.crypto4xx_ctx** %6, align 8
  %8 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %6, align 8
  %9 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.dynamic_sa_ctl*
  store %struct.dynamic_sa_ctl* %11, %struct.dynamic_sa_ctl** %7, align 8
  %12 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %7, align 8
  %13 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SA_HASH_ALG_SHA1, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %22 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SA_HASH_ALG_SHA1_DIGEST_SIZE, align 4
  %27 = call i32 @memcpy(i8* %20, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %3
  ret void
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
