; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_fec_read_parity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_fec_read_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dm_buffer = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"%s: FEC %llu: parity read failed (block %llu): %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dm_verity*, i32, i32, i32*, %struct.dm_buffer**)* @fec_read_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fec_read_parity(%struct.dm_verity* %0, i32 %1, i32 %2, i32* %3, %struct.dm_buffer** %4) #0 {
  %6 = alloca %struct.dm_verity*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dm_buffer**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.dm_verity* %0, %struct.dm_verity** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.dm_buffer** %4, %struct.dm_buffer*** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %14, %15
  %17 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %18 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %16, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %25 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %23, %26
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %31 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %29, %32
  %34 = sub nsw i32 %28, %33
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %37 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %42 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.dm_buffer**, %struct.dm_buffer*** %10, align 8
  %50 = call i32* @dm_bufio_read(i32 %40, i64 %48, %struct.dm_buffer** %49)
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = call i64 @IS_ERR(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %5
  %55 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %56 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %63 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @PTR_ERR(i32* %70)
  %72 = call i32 @DMERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %59, i64 %61, i64 %69, i32 %71)
  %73 = load %struct.dm_buffer**, %struct.dm_buffer*** %10, align 8
  store %struct.dm_buffer* null, %struct.dm_buffer** %73, align 8
  br label %74

74:                                               ; preds = %54, %5
  %75 = load i32*, i32** %13, align 8
  ret i32* %75
}

declare dso_local i32* @dm_bufio_read(i32, i64, %struct.dm_buffer**) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @DMERR(i8*, i32, i64, i64, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
