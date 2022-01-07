; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_header_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_header_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_header = type { i32, %struct.TYPE_2__*, i32, %struct.vmw_cmdbuf_man* }
%struct.TYPE_2__ = type { i32 }
%struct.vmw_cmdbuf_man = type { i32 }

@SVGA_REG_COMMAND_HIGH = common dso_local global i32 0, align 4
@SVGA_CB_CONTEXT_MASK = common dso_local global i32 0, align 4
@SVGA_REG_COMMAND_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_cmdbuf_header*)* @vmw_cmdbuf_header_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cmdbuf_header_submit(%struct.vmw_cmdbuf_header* %0) #0 {
  %2 = alloca %struct.vmw_cmdbuf_header*, align 8
  %3 = alloca %struct.vmw_cmdbuf_man*, align 8
  %4 = alloca i32, align 4
  store %struct.vmw_cmdbuf_header* %0, %struct.vmw_cmdbuf_header** %2, align 8
  %5 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %6 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %5, i32 0, i32 3
  %7 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  store %struct.vmw_cmdbuf_man* %7, %struct.vmw_cmdbuf_man** %3, align 8
  %8 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %9 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @upper_32_bits(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %3, align 8
  %13 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SVGA_REG_COMMAND_HIGH, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @vmw_write(i32 %14, i32 %15, i32 %16)
  %18 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %19 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @lower_32_bits(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %23 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SVGA_CB_CONTEXT_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %3, align 8
  %30 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SVGA_REG_COMMAND_LOW, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @vmw_write(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %36 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  ret i32 %39
}

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @vmw_write(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
