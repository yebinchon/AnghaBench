; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-dust.c___dust_clear_badblocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-dust.c___dust_clear_badblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32* }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rb_root*, i64)* @__dust_clear_badblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dust_clear_badblocks(%struct.rb_root* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct.rb_node*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.rb_node* null, %struct.rb_node** %6, align 8
  store %struct.rb_node* null, %struct.rb_node** %7, align 8
  %8 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %9 = call %struct.rb_node* @rb_first(%struct.rb_root* %8)
  store %struct.rb_node* %9, %struct.rb_node** %7, align 8
  %10 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %11 = icmp eq %struct.rb_node* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  store i32 0, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %21, %17
  %19 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %20 = icmp ne %struct.rb_node* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  store %struct.rb_node* %22, %struct.rb_node** %6, align 8
  %23 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %24 = call %struct.rb_node* @rb_next(%struct.rb_node* %23)
  store %struct.rb_node* %24, %struct.rb_node** %7, align 8
  %25 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %26 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %27 = call i32 @rb_erase(%struct.rb_node* %25, %struct.rb_root* %26)
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %5, align 8
  %30 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %31 = call i32 @kfree(%struct.rb_node* %30)
  br label %18

32:                                               ; preds = %18
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %38 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %32, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.rb_node* @rb_first(%struct.rb_root*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.rb_node* @rb_next(%struct.rb_node*) #1

declare dso_local i32 @rb_erase(%struct.rb_node*, %struct.rb_root*) #1

declare dso_local i32 @kfree(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
