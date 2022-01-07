; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_trim_sg_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_trim_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx_sg = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nx_sg*, %struct.nx_sg*, i32, i32*)* @trim_sg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @trim_sg_list(%struct.nx_sg* %0, %struct.nx_sg* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.nx_sg*, align 8
  %6 = alloca %struct.nx_sg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nx_sg*, align 8
  store %struct.nx_sg* %0, %struct.nx_sg** %5, align 8
  store %struct.nx_sg* %1, %struct.nx_sg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %45, %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.nx_sg*, %struct.nx_sg** %6, align 8
  %19 = load %struct.nx_sg*, %struct.nx_sg** %5, align 8
  %20 = icmp ugt %struct.nx_sg* %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %46

23:                                               ; preds = %21
  %24 = load %struct.nx_sg*, %struct.nx_sg** %6, align 8
  %25 = getelementptr inbounds %struct.nx_sg, %struct.nx_sg* %24, i64 -1
  store %struct.nx_sg* %25, %struct.nx_sg** %12, align 8
  %26 = load %struct.nx_sg*, %struct.nx_sg** %12, align 8
  %27 = getelementptr inbounds %struct.nx_sg, %struct.nx_sg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.nx_sg*, %struct.nx_sg** %12, align 8
  %34 = getelementptr inbounds %struct.nx_sg, %struct.nx_sg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %35, %32
  store i32 %36, i32* %34, align 4
  store i32 0, i32* %7, align 4
  br label %45

37:                                               ; preds = %23
  %38 = load %struct.nx_sg*, %struct.nx_sg** %6, align 8
  %39 = getelementptr inbounds %struct.nx_sg, %struct.nx_sg* %38, i32 -1
  store %struct.nx_sg* %39, %struct.nx_sg** %6, align 8
  %40 = load %struct.nx_sg*, %struct.nx_sg** %12, align 8
  %41 = getelementptr inbounds %struct.nx_sg, %struct.nx_sg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %31
  br label %14

46:                                               ; preds = %21
  %47 = load %struct.nx_sg*, %struct.nx_sg** %5, align 8
  %48 = load %struct.nx_sg*, %struct.nx_sg** %6, align 8
  %49 = ptrtoint %struct.nx_sg* %47 to i64
  %50 = ptrtoint %struct.nx_sg* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 4
  %53 = mul i64 %52, 4
  store i64 %53, i64* %9, align 8
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %46
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @abs(i64 %57)
  %59 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %60 = sdiv i32 %58, %59
  %61 = load %struct.nx_sg*, %struct.nx_sg** %5, align 8
  %62 = getelementptr inbounds %struct.nx_sg, %struct.nx_sg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul i32 %60, %63
  %65 = zext i32 %64 to i64
  store i64 %65, i64* %10, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* %10, align 8
  %70 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %71 = sub nsw i32 %70, 1
  %72 = xor i32 %71, -1
  %73 = sext i32 %72 to i64
  %74 = and i64 %69, %73
  %75 = sub nsw i64 %68, %74
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  %80 = sub nsw i64 %79, %76
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  br label %82

82:                                               ; preds = %56, %46
  %83 = load i64, i64* %9, align 8
  ret i64 %83
}

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
