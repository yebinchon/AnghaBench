; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_hw_supports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_hw_supports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @hw_supports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_supports(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.talitos_private*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %7)
  store %struct.talitos_private* %8, %struct.talitos_private** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @DESC_TYPE(i32 %9)
  %11 = shl i32 1, %10
  %12 = load %struct.talitos_private*, %struct.talitos_private** %5, align 8
  %13 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @PRIMARY_EU(i32 %18)
  %20 = shl i32 1, %19
  %21 = load %struct.talitos_private*, %struct.talitos_private** %5, align 8
  %22 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %17, %2
  %27 = phi i1 [ false, %2 ], [ %25, %17 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @SECONDARY_EU(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @SECONDARY_EU(i32 %36)
  %38 = shl i32 1, %37
  %39 = load %struct.talitos_private*, %struct.talitos_private** %5, align 8
  %40 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %35, %32
  %45 = phi i1 [ false, %32 ], [ %43, %35 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %26
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @DESC_TYPE(i32) #1

declare dso_local i32 @PRIMARY_EU(i32) #1

declare dso_local i32 @SECONDARY_EU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
