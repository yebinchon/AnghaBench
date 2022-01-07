; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_ctx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx_crypto_ctx = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_5__, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@NX_CSB_VALID_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nx_ctx_init(%struct.nx_crypto_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.nx_crypto_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.nx_crypto_ctx* %0, %struct.nx_crypto_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %5, i32 0, i32 8
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @memset(i32 %10, i32 0, i32 %13)
  %15 = load i32, i32* @NX_CSB_VALID_BIT, align 4
  %16 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %16, i32 0, i32 5
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %15
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %27, i32 0, i32 5
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = call i8* @__pa(%struct.TYPE_8__* %29)
  %31 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  store i8* %30, i8** %33, align 8
  %34 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %34, i32 0, i32 2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = call i8* @__pa(%struct.TYPE_8__* %36)
  %38 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i8* %37, i8** %40, align 8
  %41 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = call i8* @__pa(%struct.TYPE_8__* %43)
  %45 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %48, i32 0, i32 3
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = icmp ne %struct.TYPE_8__* %50, null
  br i1 %51, label %52, label %86

52:                                               ; preds = %2
  %53 = load i32, i32* @NX_CSB_VALID_BIT, align 4
  %54 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %54, i32 0, i32 3
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %53
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %65, i32 0, i32 3
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = call i8* @__pa(%struct.TYPE_8__* %67)
  %69 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  store i8* %68, i8** %71, align 8
  %72 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = call i8* @__pa(%struct.TYPE_8__* %74)
  %76 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  store i8* %75, i8** %78, align 8
  %79 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = call i8* @__pa(%struct.TYPE_8__* %81)
  %83 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  br label %86

86:                                               ; preds = %52, %2
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @__pa(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
