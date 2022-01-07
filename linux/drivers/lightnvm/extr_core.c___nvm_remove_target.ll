; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c___nvm_remove_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c___nvm_remove_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_target = type { i32, %struct.nvm_tgt_type*, i32, %struct.gendisk.0* }
%struct.nvm_tgt_type = type { i32, i32 (i32, i32)*, i32 (%struct.gendisk*)* }
%struct.gendisk = type opaque
%struct.gendisk.0 = type { i32, %struct.request_queue* }
%struct.request_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_target*, i32)* @__nvm_remove_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nvm_remove_target(%struct.nvm_target* %0, i32 %1) #0 {
  %3 = alloca %struct.nvm_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvm_tgt_type*, align 8
  %6 = alloca %struct.gendisk.0*, align 8
  %7 = alloca %struct.request_queue*, align 8
  store %struct.nvm_target* %0, %struct.nvm_target** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nvm_target*, %struct.nvm_target** %3, align 8
  %9 = getelementptr inbounds %struct.nvm_target, %struct.nvm_target* %8, i32 0, i32 1
  %10 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %9, align 8
  store %struct.nvm_tgt_type* %10, %struct.nvm_tgt_type** %5, align 8
  %11 = load %struct.nvm_target*, %struct.nvm_target** %3, align 8
  %12 = getelementptr inbounds %struct.nvm_target, %struct.nvm_target* %11, i32 0, i32 3
  %13 = load %struct.gendisk.0*, %struct.gendisk.0** %12, align 8
  store %struct.gendisk.0* %13, %struct.gendisk.0** %6, align 8
  %14 = load %struct.gendisk.0*, %struct.gendisk.0** %6, align 8
  %15 = getelementptr inbounds %struct.gendisk.0, %struct.gendisk.0* %14, i32 0, i32 1
  %16 = load %struct.request_queue*, %struct.request_queue** %15, align 8
  store %struct.request_queue* %16, %struct.request_queue** %7, align 8
  %17 = load %struct.gendisk.0*, %struct.gendisk.0** %6, align 8
  %18 = call i32 @del_gendisk(%struct.gendisk.0* %17)
  %19 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %20 = call i32 @blk_cleanup_queue(%struct.request_queue* %19)
  %21 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %5, align 8
  %22 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %21, i32 0, i32 2
  %23 = load i32 (%struct.gendisk*)*, i32 (%struct.gendisk*)** %22, align 8
  %24 = icmp ne i32 (%struct.gendisk*)* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %5, align 8
  %27 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %26, i32 0, i32 2
  %28 = load i32 (%struct.gendisk*)*, i32 (%struct.gendisk*)** %27, align 8
  %29 = load %struct.gendisk.0*, %struct.gendisk.0** %6, align 8
  %30 = bitcast %struct.gendisk.0* %29 to %struct.gendisk*
  %31 = call i32 %28(%struct.gendisk* %30)
  br label %32

32:                                               ; preds = %25, %2
  %33 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %5, align 8
  %34 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %33, i32 0, i32 1
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = icmp ne i32 (i32, i32)* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %5, align 8
  %39 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %38, i32 0, i32 1
  %40 = load i32 (i32, i32)*, i32 (i32, i32)** %39, align 8
  %41 = load %struct.gendisk.0*, %struct.gendisk.0** %6, align 8
  %42 = getelementptr inbounds %struct.gendisk.0, %struct.gendisk.0* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 %40(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %32
  %47 = load %struct.nvm_target*, %struct.nvm_target** %3, align 8
  %48 = getelementptr inbounds %struct.nvm_target, %struct.nvm_target* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @nvm_remove_tgt_dev(i32 %49, i32 1)
  %51 = load %struct.gendisk.0*, %struct.gendisk.0** %6, align 8
  %52 = call i32 @put_disk(%struct.gendisk.0* %51)
  %53 = load %struct.nvm_target*, %struct.nvm_target** %3, align 8
  %54 = getelementptr inbounds %struct.nvm_target, %struct.nvm_target* %53, i32 0, i32 1
  %55 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %54, align 8
  %56 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @module_put(i32 %57)
  %59 = load %struct.nvm_target*, %struct.nvm_target** %3, align 8
  %60 = getelementptr inbounds %struct.nvm_target, %struct.nvm_target* %59, i32 0, i32 0
  %61 = call i32 @list_del(i32* %60)
  %62 = load %struct.nvm_target*, %struct.nvm_target** %3, align 8
  %63 = call i32 @kfree(%struct.nvm_target* %62)
  ret void
}

declare dso_local i32 @del_gendisk(%struct.gendisk.0*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.request_queue*) #1

declare dso_local i32 @nvm_remove_tgt_dev(i32, i32) #1

declare dso_local i32 @put_disk(%struct.gendisk.0*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.nvm_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
