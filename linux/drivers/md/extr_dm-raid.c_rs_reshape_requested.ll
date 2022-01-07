; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_reshape_requested.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_reshape_requested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i64, i64, %struct.mddev }
%struct.mddev = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*)* @rs_reshape_requested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_reshape_requested(%struct.raid_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  %6 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %7 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %6, i32 0, i32 2
  store %struct.mddev* %7, %struct.mddev** %5, align 8
  %8 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %9 = call i64 @rs_takeover_requested(%struct.raid_set* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

12:                                               ; preds = %1
  %13 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %14 = call i64 @rs_is_raid0(%struct.raid_set* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %94

17:                                               ; preds = %12
  %18 = load %struct.mddev*, %struct.mddev** %5, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mddev*, %struct.mddev** %5, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %17
  %26 = load %struct.mddev*, %struct.mddev** %5, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mddev*, %struct.mddev** %5, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %35 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %33, %25, %17
  %39 = phi i1 [ true, %25 ], [ true, %17 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %42 = call i64 @rs_is_raid1(%struct.raid_set* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %38
  %45 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %46 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %51 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %94

57:                                               ; preds = %44
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = load %struct.mddev*, %struct.mddev** %5, align 8
  %62 = getelementptr inbounds %struct.mddev, %struct.mddev* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %65 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br label %68

68:                                               ; preds = %60, %57
  %69 = phi i1 [ false, %57 ], [ %67, %60 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %2, align 4
  br label %94

71:                                               ; preds = %38
  %72 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %73 = call i64 @rs_is_raid10(%struct.raid_set* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.mddev*, %struct.mddev** %5, align 8
  %80 = getelementptr inbounds %struct.mddev, %struct.mddev* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @__is_raid10_far(i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %86 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %87, 0
  br label %89

89:                                               ; preds = %84, %78, %75
  %90 = phi i1 [ false, %78 ], [ false, %75 ], [ %88, %84 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %2, align 4
  br label %94

92:                                               ; preds = %71
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %89, %68, %49, %16, %11
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @rs_takeover_requested(%struct.raid_set*) #1

declare dso_local i64 @rs_is_raid0(%struct.raid_set*) #1

declare dso_local i64 @rs_is_raid1(%struct.raid_set*) #1

declare dso_local i64 @rs_is_raid10(%struct.raid_set*) #1

declare dso_local i32 @__is_raid10_far(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
