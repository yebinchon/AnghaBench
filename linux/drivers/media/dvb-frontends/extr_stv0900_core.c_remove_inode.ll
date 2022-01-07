; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_core.c_remove_inode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_core.c_remove_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_inode = type { %struct.stv0900_inode* }
%struct.stv0900_internal = type { i32, i32 }

@stv0900_first_inode = common dso_local global %struct.stv0900_inode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv0900_internal*)* @remove_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_inode(%struct.stv0900_internal* %0) #0 {
  %2 = alloca %struct.stv0900_internal*, align 8
  %3 = alloca %struct.stv0900_inode*, align 8
  %4 = alloca %struct.stv0900_inode*, align 8
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %2, align 8
  %5 = load %struct.stv0900_inode*, %struct.stv0900_inode** @stv0900_first_inode, align 8
  store %struct.stv0900_inode* %5, %struct.stv0900_inode** %3, align 8
  %6 = load %struct.stv0900_internal*, %struct.stv0900_internal** %2, align 8
  %7 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.stv0900_internal*, %struct.stv0900_internal** %2, align 8
  %10 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.stv0900_inode* @find_inode(i32 %8, i32 %11)
  store %struct.stv0900_inode* %12, %struct.stv0900_inode** %4, align 8
  %13 = load %struct.stv0900_inode*, %struct.stv0900_inode** %4, align 8
  %14 = icmp ne %struct.stv0900_inode* %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %1
  %16 = load %struct.stv0900_inode*, %struct.stv0900_inode** %4, align 8
  %17 = load %struct.stv0900_inode*, %struct.stv0900_inode** @stv0900_first_inode, align 8
  %18 = icmp eq %struct.stv0900_inode* %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.stv0900_inode*, %struct.stv0900_inode** %4, align 8
  %21 = getelementptr inbounds %struct.stv0900_inode, %struct.stv0900_inode* %20, i32 0, i32 0
  %22 = load %struct.stv0900_inode*, %struct.stv0900_inode** %21, align 8
  store %struct.stv0900_inode* %22, %struct.stv0900_inode** @stv0900_first_inode, align 8
  br label %51

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %30, %23
  %25 = load %struct.stv0900_inode*, %struct.stv0900_inode** %3, align 8
  %26 = getelementptr inbounds %struct.stv0900_inode, %struct.stv0900_inode* %25, i32 0, i32 0
  %27 = load %struct.stv0900_inode*, %struct.stv0900_inode** %26, align 8
  %28 = load %struct.stv0900_inode*, %struct.stv0900_inode** %4, align 8
  %29 = icmp ne %struct.stv0900_inode* %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.stv0900_inode*, %struct.stv0900_inode** %3, align 8
  %32 = getelementptr inbounds %struct.stv0900_inode, %struct.stv0900_inode* %31, i32 0, i32 0
  %33 = load %struct.stv0900_inode*, %struct.stv0900_inode** %32, align 8
  store %struct.stv0900_inode* %33, %struct.stv0900_inode** %3, align 8
  br label %24

34:                                               ; preds = %24
  %35 = load %struct.stv0900_inode*, %struct.stv0900_inode** %4, align 8
  %36 = getelementptr inbounds %struct.stv0900_inode, %struct.stv0900_inode* %35, i32 0, i32 0
  %37 = load %struct.stv0900_inode*, %struct.stv0900_inode** %36, align 8
  %38 = icmp eq %struct.stv0900_inode* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.stv0900_inode*, %struct.stv0900_inode** %3, align 8
  %41 = getelementptr inbounds %struct.stv0900_inode, %struct.stv0900_inode* %40, i32 0, i32 0
  store %struct.stv0900_inode* null, %struct.stv0900_inode** %41, align 8
  br label %50

42:                                               ; preds = %34
  %43 = load %struct.stv0900_inode*, %struct.stv0900_inode** %3, align 8
  %44 = getelementptr inbounds %struct.stv0900_inode, %struct.stv0900_inode* %43, i32 0, i32 0
  %45 = load %struct.stv0900_inode*, %struct.stv0900_inode** %44, align 8
  %46 = getelementptr inbounds %struct.stv0900_inode, %struct.stv0900_inode* %45, i32 0, i32 0
  %47 = load %struct.stv0900_inode*, %struct.stv0900_inode** %46, align 8
  %48 = load %struct.stv0900_inode*, %struct.stv0900_inode** %3, align 8
  %49 = getelementptr inbounds %struct.stv0900_inode, %struct.stv0900_inode* %48, i32 0, i32 0
  store %struct.stv0900_inode* %47, %struct.stv0900_inode** %49, align 8
  br label %50

50:                                               ; preds = %42, %39
  br label %51

51:                                               ; preds = %50, %19
  %52 = load %struct.stv0900_inode*, %struct.stv0900_inode** %4, align 8
  %53 = call i32 @kfree(%struct.stv0900_inode* %52)
  br label %54

54:                                               ; preds = %51, %1
  ret void
}

declare dso_local %struct.stv0900_inode* @find_inode(i32, i32) #1

declare dso_local i32 @kfree(%struct.stv0900_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
