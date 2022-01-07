; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_pack_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-bitset.c_pack_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packer_context = type { i32 (i32, i32*, i32)*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @pack_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_bits(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.packer_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.packer_context*
  store %struct.packer_context* %15, %struct.packer_context** %9, align 8
  %16 = load %struct.packer_context*, %struct.packer_context** %9, align 8
  %17 = getelementptr inbounds %struct.packer_context, %struct.packer_context* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 64
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %18, %21
  %23 = call i32 @min(i32 64, i64 %22)
  store i32 %23, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %54, %3
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = load %struct.packer_context*, %struct.packer_context** %9, align 8
  %30 = getelementptr inbounds %struct.packer_context, %struct.packer_context* %29, i32 0, i32 0
  %31 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %32, 64
  %34 = load i32, i32* %10, align 4
  %35 = add i32 %33, %34
  %36 = load %struct.packer_context*, %struct.packer_context** %9, align 8
  %37 = getelementptr inbounds %struct.packer_context, %struct.packer_context* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %31(i32 %35, i32* %13, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %62

44:                                               ; preds = %28
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @set_bit(i32 %48, i64* %12)
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @clear_bit(i32 %51, i64* %12)
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %24

57:                                               ; preds = %24
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @cpu_to_le64(i64 %58)
  %60 = load i8*, i8** %6, align 8
  %61 = bitcast i8* %60 to i32*
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %42
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @cpu_to_le64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
