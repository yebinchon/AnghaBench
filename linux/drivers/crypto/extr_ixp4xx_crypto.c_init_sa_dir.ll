; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_init_sa_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_init_sa_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ix_sa_dir = type { i32, i32 }

@ctx_pool = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ix_sa_dir*)* @init_sa_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_sa_dir(%struct.ix_sa_dir* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ix_sa_dir*, align 8
  store %struct.ix_sa_dir* %0, %struct.ix_sa_dir** %3, align 8
  %4 = load i32, i32* @ctx_pool, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %3, align 8
  %7 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %6, i32 0, i32 1
  %8 = call i32 @dma_pool_alloc(i32 %4, i32 %5, i32* %7)
  %9 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %3, align 8
  %10 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %3, align 8
  %12 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %3, align 8
  %20 = call i32 @reset_sa_dir(%struct.ix_sa_dir* %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @reset_sa_dir(%struct.ix_sa_dir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
