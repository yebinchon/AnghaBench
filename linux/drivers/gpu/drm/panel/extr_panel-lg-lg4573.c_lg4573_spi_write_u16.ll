; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lg-lg4573.c_lg4573_spi_write_u16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lg-lg4573.c_lg4573_spi_write_u16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_transfer = type { i32, i32* }
%struct.lg4573 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }

@__const.lg4573_spi_write_u16.xfer = private unnamed_addr constant %struct.spi_transfer { i32 2, i32* null }, align 8
@.str = private unnamed_addr constant [18 x i8] c"writing data: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lg4573*, i32)* @lg4573_spi_write_u16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg4573_spi_write_u16(%struct.lg4573* %0, i32 %1) #0 {
  %3 = alloca %struct.lg4573*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_transfer, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_message, align 4
  store %struct.lg4573* %0, %struct.lg4573** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast %struct.spi_transfer* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.spi_transfer* @__const.lg4573_spi_write_u16.xfer to i8*), i64 16, i1 false)
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @cpu_to_be16(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.lg4573*, %struct.lg4573** %3, align 8
  %12 = getelementptr inbounds %struct.lg4573, %struct.lg4573* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %5, i32 0, i32 1
  store i32* %6, i32** %17, align 8
  %18 = call i32 @spi_message_init(%struct.spi_message* %7)
  %19 = call i32 @spi_message_add_tail(%struct.spi_transfer* %5, %struct.spi_message* %7)
  %20 = load %struct.lg4573*, %struct.lg4573** %3, align 8
  %21 = getelementptr inbounds %struct.lg4573, %struct.lg4573* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @spi_sync(i32 %22, %struct.spi_message* %7)
  ret i32 %23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_be16(i32) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32) #2

declare dso_local i32 @spi_message_init(%struct.spi_message*) #2

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #2

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
