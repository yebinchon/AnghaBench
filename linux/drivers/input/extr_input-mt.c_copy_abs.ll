; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_copy_abs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_copy_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, i32, i32)* @copy_abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_abs(%struct.input_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %8 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @test_bit(i32 %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %11
  %19 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = bitcast %struct.TYPE_2__* %24 to i8*
  %32 = bitcast %struct.TYPE_2__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @BIT_MASK(i32 %40)
  %42 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @BIT_WORD(i32 %45)
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %41
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %18, %11, %3
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i64 @BIT_WORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
