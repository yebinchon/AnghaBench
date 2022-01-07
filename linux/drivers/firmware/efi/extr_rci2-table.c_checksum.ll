; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_rci2-table.c_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_rci2-table.c_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rci2_table_len = common dso_local global i32 0, align 4
@rci2_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @checksum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @rci2_table_len, align 4
  %8 = srem i32 %7, 2
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @rci2_table_len, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* @rci2_base, align 8
  %12 = inttoptr i64 %11 to i64*
  store i64* %12, i64** %3, align 8
  %13 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i64, i64* %2, align 8
  %18 = sub nsw i64 %17, 1
  store i64 %18, i64* %2, align 8
  br label %19

19:                                               ; preds = %16, %0
  br label %20

20:                                               ; preds = %24, %19
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %2, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i64*, i64** %3, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, 2
  store i64 %30, i64* %5, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %3, align 8
  br label %20

33:                                               ; preds = %20
  %34 = load i32, i32* %1, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i64*, i64** %3, align 8
  %38 = bitcast i64* %37 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %42 = bitcast i32* %41 to i64*
  %43 = load i64, i64* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %36, %33
  %47 = load i64, i64* %6, align 8
  ret i64 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
