; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_listen_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_listen_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.sock = type { i32 }
%struct.listen_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chtls_listen_stop(%struct.chtls_dev* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.chtls_dev*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.listen_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.chtls_dev* %0, %struct.chtls_dev** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %7 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call i32 @listen_hash_del(%struct.chtls_dev* %7, %struct.sock* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %15 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @lookup_stid(i32 %16, i32 %17)
  %19 = inttoptr i64 %18 to %struct.listen_ctx*
  store %struct.listen_ctx* %19, %struct.listen_ctx** %5, align 8
  %20 = load %struct.listen_ctx*, %struct.listen_ctx** %5, align 8
  %21 = call i32 @chtls_reset_synq(%struct.listen_ctx* %20)
  %22 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %23 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %31 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cxgb4_remove_server(i32 %28, i32 %29, i32 %36, i32 0)
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = call i32 @chtls_disconnect_acceptq(%struct.sock* %38)
  br label %40

40:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @listen_hash_del(%struct.chtls_dev*, %struct.sock*) #1

declare dso_local i64 @lookup_stid(i32, i32) #1

declare dso_local i32 @chtls_reset_synq(%struct.listen_ctx*) #1

declare dso_local i32 @cxgb4_remove_server(i32, i32, i32, i32) #1

declare dso_local i32 @chtls_disconnect_acceptq(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
