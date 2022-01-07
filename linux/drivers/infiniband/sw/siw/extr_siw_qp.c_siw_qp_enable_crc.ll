; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_enable_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_enable_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { %struct.siw_iwarp_tx, %struct.siw_rx_stream }
%struct.siw_iwarp_tx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.siw_rx_stream = type { %struct.TYPE_2__* }

@siw_crypto_shash = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_qp*)* @siw_qp_enable_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_qp_enable_crc(%struct.siw_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca %struct.siw_rx_stream*, align 8
  %5 = alloca %struct.siw_iwarp_tx*, align 8
  %6 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  %7 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %8 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %7, i32 0, i32 1
  store %struct.siw_rx_stream* %8, %struct.siw_rx_stream** %4, align 8
  %9 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %10 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %9, i32 0, i32 0
  store %struct.siw_iwarp_tx* %10, %struct.siw_iwarp_tx** %5, align 8
  %11 = load i32*, i32** @siw_crypto_shash, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %69

16:                                               ; preds = %1
  %17 = load i32*, i32** @siw_crypto_shash, align 8
  %18 = call i32 @crypto_shash_descsize(i32* %17)
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kzalloc(i32 %22, i32 %23)
  %25 = bitcast i8* %24 to %struct.TYPE_2__*
  %26 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %27 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %26, i32 0, i32 0
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 %28, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_2__*
  %32 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %33 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %32, i32 0, i32 0
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %33, align 8
  %34 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %35 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %16
  %39 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %40 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %38, %16
  %44 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %45 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = call i32 @kfree(%struct.TYPE_2__* %46)
  %48 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %49 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @kfree(%struct.TYPE_2__* %50)
  %52 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %53 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %52, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %53, align 8
  %54 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %55 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %54, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %55, align 8
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %69

58:                                               ; preds = %38
  %59 = load i32*, i32** @siw_crypto_shash, align 8
  %60 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %61 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32* %59, i32** %63, align 8
  %64 = load i32*, i32** @siw_crypto_shash, align 8
  %65 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %66 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32* %64, i32** %68, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %58, %43, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @crypto_shash_descsize(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
