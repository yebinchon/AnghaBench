; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_create_extcon_class.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_create_extcon_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@extcon_class = common dso_local global %struct.TYPE_5__* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@extcon_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_extcon_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_extcon_class() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @extcon_class, align 8
  %3 = icmp ne %struct.TYPE_5__* %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @THIS_MODULE, align 4
  %6 = call %struct.TYPE_5__* @class_create(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** @extcon_class, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @extcon_class, align 8
  %8 = call i64 @IS_ERR(%struct.TYPE_5__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @extcon_class, align 8
  %12 = call i32 @PTR_ERR(%struct.TYPE_5__* %11)
  store i32 %12, i32* %1, align 4
  br label %18

13:                                               ; preds = %4
  %14 = load i32, i32* @extcon_groups, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @extcon_class, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %13, %0
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %17, %10
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local %struct.TYPE_5__* @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
