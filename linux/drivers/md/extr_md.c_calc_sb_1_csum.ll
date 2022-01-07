; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_calc_sb_1_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_calc_sb_1_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_superblock_1 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp_superblock_1*)* @calc_sb_1_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_sb_1_csum(%struct.mdp_superblock_1* %0) #0 {
  %2 = alloca %struct.mdp_superblock_1*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.mdp_superblock_1* %0, %struct.mdp_superblock_1** %2, align 8
  %8 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %2, align 8
  %9 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  %12 = mul nsw i32 %11, 2
  %13 = add nsw i32 256, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %2, align 8
  %15 = bitcast %struct.mdp_superblock_1* %14 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %2, align 8
  %17 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  %19 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %2, align 8
  %20 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %32, %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 4
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %7, align 8
  %27 = load i32, i32* %25, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 4
  store i32 %34, i32* %6, align 4
  br label %21

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le16_to_cpu(i32 %40)
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i64, i64* %5, align 8
  %46 = and i64 %45, 4294967295
  %47 = load i64, i64* %5, align 8
  %48 = lshr i64 %47, 32
  %49 = add i64 %46, %48
  store i64 %49, i64* %4, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %2, align 8
  %52 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @cpu_to_le32(i64 %53)
  ret i32 %54
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
