; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c___thin_bio_rb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c___thin_bio_rb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.bio = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.dm_thin_endio_hook = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, %struct.bio*)* @__thin_bio_rb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__thin_bio_rb_add(%struct.thin_c* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.thin_c*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.rb_node**, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct.dm_thin_endio_hook*, align 8
  %8 = alloca i64, align 8
  store %struct.thin_c* %0, %struct.thin_c** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %14 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store %struct.rb_node** %15, %struct.rb_node*** %5, align 8
  store %struct.rb_node* null, %struct.rb_node** %6, align 8
  br label %16

16:                                               ; preds = %40, %2
  %17 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %18 = load %struct.rb_node*, %struct.rb_node** %17, align 8
  %19 = icmp ne %struct.rb_node* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %22 = load %struct.rb_node*, %struct.rb_node** %21, align 8
  store %struct.rb_node* %22, %struct.rb_node** %6, align 8
  %23 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %24 = call %struct.dm_thin_endio_hook* @thin_pbd(%struct.rb_node* %23)
  store %struct.dm_thin_endio_hook* %24, %struct.dm_thin_endio_hook** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %7, align 8
  %27 = call %struct.TYPE_7__* @thin_bio(%struct.dm_thin_endio_hook* %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %25, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %34 = load %struct.rb_node*, %struct.rb_node** %33, align 8
  %35 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %34, i32 0, i32 1
  store %struct.rb_node** %35, %struct.rb_node*** %5, align 8
  br label %40

36:                                               ; preds = %20
  %37 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %38 = load %struct.rb_node*, %struct.rb_node** %37, align 8
  %39 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %38, i32 0, i32 0
  store %struct.rb_node** %39, %struct.rb_node*** %5, align 8
  br label %40

40:                                               ; preds = %36, %32
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.bio*, %struct.bio** %4, align 8
  %43 = call %struct.dm_thin_endio_hook* @dm_per_bio_data(%struct.bio* %42, i32 4)
  store %struct.dm_thin_endio_hook* %43, %struct.dm_thin_endio_hook** %7, align 8
  %44 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %7, align 8
  %45 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %44, i32 0, i32 0
  %46 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %47 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %48 = call i32 @rb_link_node(i32* %45, %struct.rb_node* %46, %struct.rb_node** %47)
  %49 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %7, align 8
  %50 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %49, i32 0, i32 0
  %51 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %52 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %51, i32 0, i32 0
  %53 = call i32 @rb_insert_color(i32* %50, %struct.TYPE_8__* %52)
  ret void
}

declare dso_local %struct.dm_thin_endio_hook* @thin_pbd(%struct.rb_node*) #1

declare dso_local %struct.TYPE_7__* @thin_bio(%struct.dm_thin_endio_hook*) #1

declare dso_local %struct.dm_thin_endio_hook* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
