; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_handle_seq_write_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_handle_seq_write_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Processing zone %u write error (zone wp %u/%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*, %struct.dm_zone*)* @dmz_handle_seq_write_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_handle_seq_write_err(%struct.dmz_metadata* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmz_metadata*, align 8
  %5 = alloca %struct.dm_zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %4, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %9 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %12 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %13 = call i32 @dmz_update_zone(%struct.dmz_metadata* %11, %struct.dm_zone* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %48

18:                                               ; preds = %2
  %19 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %20 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %23 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %24 = call i32 @dmz_id(%struct.dmz_metadata* %22, %struct.dm_zone* %23)
  %25 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %26 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dmz_dev_warn(i32 %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %28)
  %30 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %31 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %18
  %36 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %37 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %38 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %39 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %43 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %41, %44
  %46 = call i32 @dmz_invalidate_blocks(%struct.dmz_metadata* %36, %struct.dm_zone* %37, i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %35, %18
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @dmz_update_zone(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_dev_warn(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dmz_id(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_invalidate_blocks(%struct.dmz_metadata*, %struct.dm_zone*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
