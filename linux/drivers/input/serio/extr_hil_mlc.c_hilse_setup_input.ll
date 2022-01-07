; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_hil_mlc.c_hilse_setup_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_hil_mlc.c_hilse_setup_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hilse_node = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@HIL_PKT_ADDR_SHIFT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.hilse_node*)* @hilse_setup_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hilse_setup_input(%struct.TYPE_5__* %0, %struct.hilse_node* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.hilse_node*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.hilse_node* %1, %struct.hilse_node** %4, align 8
  %5 = load %struct.hilse_node*, %struct.hilse_node** %4, align 8
  %6 = getelementptr inbounds %struct.hilse_node, %struct.hilse_node* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %52 [
    i32 130, label %8
    i32 129, label %25
    i32 131, label %42
    i32 128, label %49
  ]

8:                                                ; preds = %2
  %9 = load %struct.hilse_node*, %struct.hilse_node** %4, align 8
  %10 = getelementptr inbounds %struct.hilse_node, %struct.hilse_node* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 2
  %19 = load i32, i32* @HIL_PKT_ADDR_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %54

25:                                               ; preds = %2
  %26 = load %struct.hilse_node*, %struct.hilse_node** %4, align 8
  %27 = getelementptr inbounds %struct.hilse_node, %struct.hilse_node* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @HIL_PKT_ADDR_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %54

42:                                               ; preds = %2
  %43 = load %struct.hilse_node*, %struct.hilse_node** %4, align 8
  %44 = getelementptr inbounds %struct.hilse_node, %struct.hilse_node* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %54

49:                                               ; preds = %2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  br label %54

52:                                               ; preds = %2
  %53 = call i32 (...) @BUG()
  br label %54

54:                                               ; preds = %52, %49, %42, %25, %8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.hilse_node*, %struct.hilse_node** %4, align 8
  %58 = getelementptr inbounds %struct.hilse_node, %struct.hilse_node* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usecs_to_jiffies(i32 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @jiffies, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i32 15, i32* %67, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memset(i32 %70, i32 0, i32 64)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = call i32 @down_trylock(i32* %73)
  %75 = call i32 @BUG_ON(i32 %74)
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @down_trylock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
