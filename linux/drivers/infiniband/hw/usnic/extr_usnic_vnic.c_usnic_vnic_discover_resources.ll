; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_vnic.c_usnic_vnic_discover_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_vnic.c_usnic_vnic_discover_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.usnic_vnic = type { %struct.TYPE_3__*, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Cannot memory-map BAR %d, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to register device %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USNIC_VNIC_RES_TYPE_EOL = common dso_local global i32 0, align 4
@USNIC_VNIC_RES_TYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.usnic_vnic*)* @usnic_vnic_discover_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usnic_vnic_discover_resources(%struct.pci_dev* %0, %struct.usnic_vnic* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.usnic_vnic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.usnic_vnic* %1, %struct.usnic_vnic** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %78, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %12 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %13)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %81

16:                                               ; preds = %9
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @pci_resource_flags(%struct.pci_dev* %17, i32 %18)
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %78

24:                                               ; preds = %16
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @pci_resource_len(%struct.pci_dev* %25, i32 %26)
  %28 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %29 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i32 %27, i32* %34, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %38 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pci_iomap(%struct.pci_dev* %35, i32 %36, i32 %44)
  %46 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %47 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %45, i32* %52, align 4
  %53 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %54 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %24
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @usnic_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %152

67:                                               ; preds = %24
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @pci_resource_start(%struct.pci_dev* %68, i32 %69)
  %71 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %72 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 %70, i32* %77, align 4
  br label %78

78:                                               ; preds = %67, %23
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %9

81:                                               ; preds = %9
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %85 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %88 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %89)
  %91 = call i32 @vnic_dev_register(i32* null, %struct.pci_dev* %82, %struct.pci_dev* %83, %struct.TYPE_3__* %86, i32 %90)
  %92 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %93 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %95 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %81
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = call i32 @pci_name(%struct.pci_dev* %99)
  %101 = call i32 @usnic_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  br label %152

104:                                              ; preds = %81
  %105 = load i32, i32* @USNIC_VNIC_RES_TYPE_EOL, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %125, %104
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @USNIC_VNIC_RES_TYPE_MAX, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %115 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = call i32 @usnic_vnic_alloc_res_chunk(%struct.usnic_vnic* %112, i32 %113, i32* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %129

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %107

128:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %194

129:                                              ; preds = %123
  %130 = load i32, i32* %6, align 4
  %131 = add i32 %130, -1
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %144, %129
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @USNIC_VNIC_RES_TYPE_EOL, align 4
  %135 = icmp ugt i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %138 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = call i32 @usnic_vnic_free_res_chunk(i32* %142)
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %6, align 4
  %146 = add i32 %145, -1
  store i32 %146, i32* %6, align 4
  br label %132

147:                                              ; preds = %132
  %148 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %149 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @vnic_dev_unregister(i32 %150)
  br label %152

152:                                              ; preds = %147, %98, %62
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %189, %152
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %156 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %155, i32 0, i32 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %157)
  %159 = icmp slt i32 %154, %158
  br i1 %159, label %160, label %192

160:                                              ; preds = %153
  %161 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @pci_resource_flags(%struct.pci_dev* %161, i32 %162)
  %164 = load i32, i32* @IORESOURCE_MEM, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  br label %189

168:                                              ; preds = %160
  %169 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %170 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %169, i32 0, i32 0
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %168
  br label %192

179:                                              ; preds = %168
  %180 = load %struct.usnic_vnic*, %struct.usnic_vnic** %5, align 8
  %181 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %180, i32 0, i32 0
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @iounmap(i32 %187)
  br label %189

189:                                              ; preds = %179, %167
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %153

192:                                              ; preds = %178, %153
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %192, %128
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @usnic_err(i8*, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @vnic_dev_register(i32*, %struct.pci_dev*, %struct.pci_dev*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @usnic_vnic_alloc_res_chunk(%struct.usnic_vnic*, i32, i32*) #1

declare dso_local i32 @usnic_vnic_free_res_chunk(i32*) #1

declare dso_local i32 @vnic_dev_unregister(i32) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
