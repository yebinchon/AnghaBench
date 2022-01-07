; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_put_all_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_put_all_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i32 }
%struct.r10bio = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bio*, %struct.bio* }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*, %struct.r10bio*)* @put_all_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_all_bios(%struct.r10conf* %0, %struct.r10bio* %1) #0 {
  %3 = alloca %struct.r10conf*, align 8
  %4 = alloca %struct.r10bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio**, align 8
  store %struct.r10conf* %0, %struct.r10conf** %3, align 8
  store %struct.r10bio* %1, %struct.r10bio** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %53, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %10 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %7
  %14 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %15 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store %struct.bio** %20, %struct.bio*** %6, align 8
  %21 = load %struct.bio**, %struct.bio*** %6, align 8
  %22 = load %struct.bio*, %struct.bio** %21, align 8
  %23 = call i32 @BIO_SPECIAL(%struct.bio* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %13
  %26 = load %struct.bio**, %struct.bio*** %6, align 8
  %27 = load %struct.bio*, %struct.bio** %26, align 8
  %28 = call i32 @bio_put(%struct.bio* %27)
  br label %29

29:                                               ; preds = %25, %13
  %30 = load %struct.bio**, %struct.bio*** %6, align 8
  store %struct.bio* null, %struct.bio** %30, align 8
  %31 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %32 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.bio** %37, %struct.bio*** %6, align 8
  %38 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %39 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %29
  %43 = load %struct.bio**, %struct.bio*** %6, align 8
  %44 = load %struct.bio*, %struct.bio** %43, align 8
  %45 = call i32 @BIO_SPECIAL(%struct.bio* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load %struct.bio**, %struct.bio*** %6, align 8
  %49 = load %struct.bio*, %struct.bio** %48, align 8
  %50 = call i32 @bio_put(%struct.bio* %49)
  br label %51

51:                                               ; preds = %47, %42, %29
  %52 = load %struct.bio**, %struct.bio*** %6, align 8
  store %struct.bio* null, %struct.bio** %52, align 8
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %7

56:                                               ; preds = %7
  ret void
}

declare dso_local i32 @BIO_SPECIAL(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
