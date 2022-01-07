; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_hcall_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_hcall_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.vio_dev* }
%struct.vio_dev = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nx_crypto_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.vio_pfo_op = type { i32 }

@nx_driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"vio_h_cop_sync failed: rc: %d hcall rc: %ld\0A\00", align 1
@current = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nx_hcall_sync(%struct.nx_crypto_ctx* %0, %struct.vio_pfo_op* %1, i32 %2) #0 {
  %4 = alloca %struct.nx_crypto_ctx*, align 8
  %5 = alloca %struct.vio_pfo_op*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vio_dev*, align 8
  store %struct.nx_crypto_ctx* %0, %struct.nx_crypto_ctx** %4, align 8
  store %struct.vio_pfo_op* %1, %struct.vio_pfo_op** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 10, i32* %8, align 4
  %10 = load %struct.vio_dev*, %struct.vio_dev** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nx_driver, i32 0, i32 0), align 8
  store %struct.vio_dev* %10, %struct.vio_dev** %9, align 8
  %11 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = call i32 @atomic_inc(i32* %14)
  br label %16

16:                                               ; preds = %32, %3
  %17 = load %struct.vio_dev*, %struct.vio_dev** %9, align 8
  %18 = load %struct.vio_pfo_op*, %struct.vio_pfo_op** %5, align 8
  %19 = call i32 @vio_h_cop_sync(%struct.vio_dev* %17, %struct.vio_pfo_op* %18)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %29, 0
  br label %32

32:                                               ; preds = %28, %25, %20
  %33 = phi i1 [ false, %25 ], [ false, %20 ], [ %31, %28 ]
  br i1 %33, label %16, label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load %struct.vio_dev*, %struct.vio_dev** %9, align 8
  %39 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.vio_pfo_op*, %struct.vio_pfo_op** %5, align 8
  %42 = getelementptr inbounds %struct.vio_pfo_op, %struct.vio_pfo_op* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = call i32 @atomic_inc(i32* %48)
  %50 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load %struct.vio_pfo_op*, %struct.vio_pfo_op** %5, align 8
  %55 = getelementptr inbounds %struct.vio_pfo_op, %struct.vio_pfo_op* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @atomic_set(i32* %53, i32 %56)
  %58 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @atomic_set(i32* %61, i32 %64)
  br label %66

66:                                               ; preds = %37, %34
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @vio_h_cop_sync(%struct.vio_dev*, %struct.vio_pfo_op*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
