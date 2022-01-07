; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_attach_i3c_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_attach_i3c_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { %struct.TYPE_9__, %struct.TYPE_6__*, %struct.i3c_dev_desc* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.i3c_dev_desc*)* }
%struct.i3c_dev_desc = type { %struct.TYPE_7__, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller*, %struct.i3c_dev_desc*)* @i3c_master_attach_i3c_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3c_master_attach_i3c_dev(%struct.i3c_master_controller* %0, %struct.i3c_dev_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i3c_master_controller*, align 8
  %5 = alloca %struct.i3c_dev_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %4, align 8
  store %struct.i3c_dev_desc* %1, %struct.i3c_dev_desc** %5, align 8
  %7 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %5, align 8
  %8 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %5, align 8
  %14 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %63

19:                                               ; preds = %12, %2
  %20 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %5, align 8
  %21 = call i32 @i3c_master_get_i3c_addrs(%struct.i3c_dev_desc* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %63

26:                                               ; preds = %19
  %27 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %28 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %27, i32 0, i32 2
  %29 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %28, align 8
  %30 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %5, align 8
  %31 = icmp ne %struct.i3c_dev_desc* %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %34 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32 (%struct.i3c_dev_desc*)*, i32 (%struct.i3c_dev_desc*)** %36, align 8
  %38 = icmp ne i32 (%struct.i3c_dev_desc*)* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %41 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32 (%struct.i3c_dev_desc*)*, i32 (%struct.i3c_dev_desc*)** %43, align 8
  %45 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %5, align 8
  %46 = call i32 %44(%struct.i3c_dev_desc* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %5, align 8
  %51 = call i32 @i3c_master_put_i3c_addrs(%struct.i3c_dev_desc* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %63

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %32, %26
  %55 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %5, align 8
  %56 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %59 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @list_add_tail(i32* %57, i32* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %49, %24, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @i3c_master_get_i3c_addrs(%struct.i3c_dev_desc*) #1

declare dso_local i32 @i3c_master_put_i3c_addrs(%struct.i3c_dev_desc*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
