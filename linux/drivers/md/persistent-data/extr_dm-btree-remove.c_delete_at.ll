; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c_delete_at.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c_delete_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree_node*, i32)* @delete_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_at(%struct.btree_node* %0, i32 %1) #0 {
  %3 = alloca %struct.btree_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btree_node* %0, %struct.btree_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %9 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add i32 %14, 1
  %16 = sub i32 %13, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %18 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp uge i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %2
  %30 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @key_ptr(%struct.btree_node* %30, i32 %31)
  %33 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = add i32 %34, 1
  %36 = call i32 @key_ptr(%struct.btree_node* %33, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memmove(i32 %32, i32 %36, i32 %40)
  %42 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @value_ptr(%struct.btree_node* %42, i32 %43)
  %45 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  %48 = call i32 @value_ptr(%struct.btree_node* %45, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = mul i32 %49, %50
  %52 = call i32 @memmove(i32 %44, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %29, %2
  %54 = load i32, i32* %5, align 4
  %55 = sub i32 %54, 1
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = load %struct.btree_node*, %struct.btree_node** %3, align 8
  %58 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @key_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @value_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
