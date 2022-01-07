; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_walk_advance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_walk_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_crypto_walk = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.artpec6_crypto_walk*, i64)* @artpec6_crypto_walk_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @artpec6_crypto_walk_advance(%struct.artpec6_crypto_walk* %0, i64 %1) #0 {
  %3 = alloca %struct.artpec6_crypto_walk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.artpec6_crypto_walk* %0, %struct.artpec6_crypto_walk** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %6

6:                                                ; preds = %65, %2
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load %struct.artpec6_crypto_walk*, %struct.artpec6_crypto_walk** %3, align 8
  %11 = getelementptr inbounds %struct.artpec6_crypto_walk, %struct.artpec6_crypto_walk* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi i1 [ false, %6 ], [ %13, %9 ]
  br i1 %15, label %16, label %66

16:                                               ; preds = %14
  %17 = load %struct.artpec6_crypto_walk*, %struct.artpec6_crypto_walk** %3, align 8
  %18 = getelementptr inbounds %struct.artpec6_crypto_walk, %struct.artpec6_crypto_walk* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.artpec6_crypto_walk*, %struct.artpec6_crypto_walk** %3, align 8
  %21 = getelementptr inbounds %struct.artpec6_crypto_walk, %struct.artpec6_crypto_walk* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %19, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.artpec6_crypto_walk*, %struct.artpec6_crypto_walk** %3, align 8
  %30 = getelementptr inbounds %struct.artpec6_crypto_walk, %struct.artpec6_crypto_walk* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.artpec6_crypto_walk*, %struct.artpec6_crypto_walk** %3, align 8
  %35 = getelementptr inbounds %struct.artpec6_crypto_walk, %struct.artpec6_crypto_walk* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %33, %36
  %38 = call i64 @min(i64 %28, i64 %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %4, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.artpec6_crypto_walk*, %struct.artpec6_crypto_walk** %3, align 8
  %44 = getelementptr inbounds %struct.artpec6_crypto_walk, %struct.artpec6_crypto_walk* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.artpec6_crypto_walk*, %struct.artpec6_crypto_walk** %3, align 8
  %48 = getelementptr inbounds %struct.artpec6_crypto_walk, %struct.artpec6_crypto_walk* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.artpec6_crypto_walk*, %struct.artpec6_crypto_walk** %3, align 8
  %51 = getelementptr inbounds %struct.artpec6_crypto_walk, %struct.artpec6_crypto_walk* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %49, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %16
  %57 = load %struct.artpec6_crypto_walk*, %struct.artpec6_crypto_walk** %3, align 8
  %58 = getelementptr inbounds %struct.artpec6_crypto_walk, %struct.artpec6_crypto_walk* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = call %struct.TYPE_3__* @sg_next(%struct.TYPE_3__* %59)
  %61 = load %struct.artpec6_crypto_walk*, %struct.artpec6_crypto_walk** %3, align 8
  %62 = getelementptr inbounds %struct.artpec6_crypto_walk, %struct.artpec6_crypto_walk* %61, i32 0, i32 1
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %62, align 8
  %63 = load %struct.artpec6_crypto_walk*, %struct.artpec6_crypto_walk** %3, align 8
  %64 = getelementptr inbounds %struct.artpec6_crypto_walk, %struct.artpec6_crypto_walk* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %56, %16
  br label %6

66:                                               ; preds = %14
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local %struct.TYPE_3__* @sg_next(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
