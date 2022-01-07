; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_walk_ablock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_walk_ablock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walk_info = type { i32 (i32, i32, i32)*, i32, i32 }
%struct.dm_block = type { i32 }
%struct.array_block = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*)* @walk_ablock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_ablock(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.walk_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dm_block*, align 8
  %15 = alloca %struct.array_block*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.walk_info*
  store %struct.walk_info* %17, %struct.walk_info** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @memcpy(i32* %11, i8* %18, i32 4)
  %20 = load %struct.walk_info*, %struct.walk_info** %8, align 8
  %21 = getelementptr inbounds %struct.walk_info, %struct.walk_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @le64_to_cpu(i32 %23)
  %25 = call i32 @get_ablock(i32 %22, i32 %24, %struct.dm_block** %14, %struct.array_block** %15)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %78

30:                                               ; preds = %3
  %31 = load %struct.array_block*, %struct.array_block** %15, align 8
  %32 = getelementptr inbounds %struct.array_block, %struct.array_block* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.array_block*, %struct.array_block** %15, align 8
  %36 = getelementptr inbounds %struct.array_block, %struct.array_block* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  store i32 %38, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %68, %30
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load %struct.walk_info*, %struct.walk_info** %8, align 8
  %45 = getelementptr inbounds %struct.walk_info, %struct.walk_info* %44, i32 0, i32 0
  %46 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %45, align 8
  %47 = load %struct.walk_info*, %struct.walk_info** %8, align 8
  %48 = getelementptr inbounds %struct.walk_info, %struct.walk_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = mul i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %54, %55
  %57 = load %struct.walk_info*, %struct.walk_info** %8, align 8
  %58 = getelementptr inbounds %struct.walk_info, %struct.walk_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.array_block*, %struct.array_block** %15, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @element_at(i32 %59, %struct.array_block* %60, i32 %61)
  %63 = call i32 %46(i32 %49, i32 %56, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %43
  br label %71

67:                                               ; preds = %43
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %39

71:                                               ; preds = %66, %39
  %72 = load %struct.walk_info*, %struct.walk_info** %8, align 8
  %73 = getelementptr inbounds %struct.walk_info, %struct.walk_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.dm_block*, %struct.dm_block** %14, align 8
  %76 = call i32 @unlock_ablock(i32 %74, %struct.dm_block* %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %71, %28
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @get_ablock(i32, i32, %struct.dm_block**, %struct.array_block**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @element_at(i32, %struct.array_block*, i32) #1

declare dso_local i32 @unlock_ablock(i32, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
