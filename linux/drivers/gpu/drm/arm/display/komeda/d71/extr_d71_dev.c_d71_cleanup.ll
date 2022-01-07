; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_dev.c_d71_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_dev.c_d71_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_dev = type { %struct.d71_dev*, i32 }
%struct.d71_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_dev*)* @d71_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d71_cleanup(%struct.komeda_dev* %0) #0 {
  %2 = alloca %struct.komeda_dev*, align 8
  %3 = alloca %struct.d71_dev*, align 8
  store %struct.komeda_dev* %0, %struct.komeda_dev** %2, align 8
  %4 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %5 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %4, i32 0, i32 0
  %6 = load %struct.d71_dev*, %struct.d71_dev** %5, align 8
  store %struct.d71_dev* %6, %struct.d71_dev** %3, align 8
  %7 = load %struct.d71_dev*, %struct.d71_dev** %3, align 8
  %8 = icmp ne %struct.d71_dev* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %12 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.d71_dev*, %struct.d71_dev** %3, align 8
  %15 = call i32 @devm_kfree(i32 %13, %struct.d71_dev* %14)
  %16 = load %struct.komeda_dev*, %struct.komeda_dev** %2, align 8
  %17 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %16, i32 0, i32 0
  store %struct.d71_dev* null, %struct.d71_dev** %17, align 8
  br label %18

18:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @devm_kfree(i32, %struct.d71_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
