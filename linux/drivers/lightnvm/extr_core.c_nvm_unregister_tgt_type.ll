; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_unregister_tgt_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_unregister_tgt_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_tgt_type = type { i32 }

@nvm_tgtt_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvm_unregister_tgt_type(%struct.nvm_tgt_type* %0) #0 {
  %2 = alloca %struct.nvm_tgt_type*, align 8
  store %struct.nvm_tgt_type* %0, %struct.nvm_tgt_type** %2, align 8
  %3 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %2, align 8
  %4 = icmp ne %struct.nvm_tgt_type* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %12

6:                                                ; preds = %1
  %7 = call i32 @down_write(i32* @nvm_tgtt_lock)
  %8 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %2, align 8
  %9 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %8, i32 0, i32 0
  %10 = call i32 @list_del(i32* %9)
  %11 = call i32 @up_write(i32* @nvm_tgtt_lock)
  br label %12

12:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
