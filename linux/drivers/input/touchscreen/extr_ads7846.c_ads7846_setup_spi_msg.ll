; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_setup_spi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_setup_spi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads7846 = type { i32, i32, %struct.ads7846_packet*, %struct.spi_transfer*, %struct.spi_message* }
%struct.ads7846_packet = type { i32, i8*, i8**, %struct.TYPE_2__, i8*, i8*, i8*, i8**, i8*, i8** }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32, i32* }
%struct.spi_transfer = type { i32, i32*, i8**, i64 }
%struct.spi_message = type { %struct.ads7846* }
%struct.ads7846_platform_data = type { i32, i64 }

@PWRDOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ads7846*, %struct.ads7846_platform_data*)* @ads7846_setup_spi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ads7846_setup_spi_msg(%struct.ads7846* %0, %struct.ads7846_platform_data* %1) #0 {
  %3 = alloca %struct.ads7846*, align 8
  %4 = alloca %struct.ads7846_platform_data*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.ads7846_packet*, align 8
  %8 = alloca i32, align 4
  store %struct.ads7846* %0, %struct.ads7846** %3, align 8
  store %struct.ads7846_platform_data* %1, %struct.ads7846_platform_data** %4, align 8
  %9 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %10 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %9, i32 0, i32 4
  %11 = load %struct.spi_message*, %struct.spi_message** %10, align 8
  %12 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %11, i64 0
  store %struct.spi_message* %12, %struct.spi_message** %5, align 8
  %13 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %14 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %13, i32 0, i32 3
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  store %struct.spi_transfer* %15, %struct.spi_transfer** %6, align 8
  %16 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %17 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %16, i32 0, i32 2
  %18 = load %struct.ads7846_packet*, %struct.ads7846_packet** %17, align 8
  store %struct.ads7846_packet* %18, %struct.ads7846_packet** %7, align 8
  %19 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %4, align 8
  %20 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %23 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 7873
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %28 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %27, i32 0, i32 0
  store i32 7846, i32* %28, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %31 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %33 = call i32 @spi_message_init(%struct.spi_message* %32)
  %34 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %35 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %36 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %35, i32 0, i32 0
  store %struct.ads7846* %34, %struct.ads7846** %36, align 8
  %37 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %38 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 7845
  br i1 %40, label %41, label %74

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = call i8* @READ_Y(i32 %42)
  %44 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %45 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %44, i32 0, i32 9
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  store i8* %43, i8** %47, align 8
  %48 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %49 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %48, i32 0, i32 9
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  store i8* null, i8** %51, align 8
  %52 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %53 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %52, i32 0, i32 9
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 2
  store i8* null, i8** %55, align 8
  %56 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %57 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %56, i32 0, i32 9
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %61 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %60, i32 0, i32 2
  store i8** %59, i8*** %61, align 8
  %62 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %63 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %68 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %70 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %69, i32 0, i32 0
  store i32 3, i32* %70, align 8
  %71 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %72 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %73 = call i32 @spi_message_add_tail(%struct.spi_transfer* %71, %struct.spi_message* %72)
  br label %100

74:                                               ; preds = %29
  %75 = load i32, i32* %8, align 4
  %76 = call i8* @READ_Y(i32 %75)
  %77 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %78 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %77, i32 0, i32 8
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %80 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %79, i32 0, i32 8
  %81 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %82 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %81, i32 0, i32 2
  store i8** %80, i8*** %82, align 8
  %83 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %84 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %86 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %87 = call i32 @spi_message_add_tail(%struct.spi_transfer* %85, %struct.spi_message* %86)
  %88 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %89 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %88, i32 1
  store %struct.spi_transfer* %89, %struct.spi_transfer** %6, align 8
  %90 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %91 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  %93 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %94 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  %95 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %96 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %95, i32 0, i32 0
  store i32 2, i32* %96, align 8
  %97 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %98 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %99 = call i32 @spi_message_add_tail(%struct.spi_transfer* %97, %struct.spi_message* %98)
  br label %100

100:                                              ; preds = %74, %41
  %101 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %4, align 8
  %102 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %100
  %106 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %4, align 8
  %107 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %110 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %109, i32 0, i32 3
  store i64 %108, i64* %110, align 8
  %111 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %112 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %111, i32 1
  store %struct.spi_transfer* %112, %struct.spi_transfer** %6, align 8
  %113 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %114 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %113, i32 0, i32 8
  %115 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %116 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %115, i32 0, i32 2
  store i8** %114, i8*** %116, align 8
  %117 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %118 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %120 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %121 = call i32 @spi_message_add_tail(%struct.spi_transfer* %119, %struct.spi_message* %120)
  %122 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %123 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %122, i32 1
  store %struct.spi_transfer* %123, %struct.spi_transfer** %6, align 8
  %124 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %125 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 4
  %127 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %128 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %127, i32 0, i32 1
  store i32* %126, i32** %128, align 8
  %129 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %130 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %129, i32 0, i32 0
  store i32 2, i32* %130, align 8
  %131 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %132 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %133 = call i32 @spi_message_add_tail(%struct.spi_transfer* %131, %struct.spi_message* %132)
  br label %134

134:                                              ; preds = %105, %100
  %135 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %136 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %140 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %139, i32 1
  store %struct.spi_message* %140, %struct.spi_message** %5, align 8
  %141 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %142 = call i32 @spi_message_init(%struct.spi_message* %141)
  %143 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %144 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %145 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %144, i32 0, i32 0
  store %struct.ads7846* %143, %struct.ads7846** %145, align 8
  %146 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %147 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 7845
  br i1 %149, label %150, label %185

150:                                              ; preds = %134
  %151 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %152 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %151, i32 1
  store %struct.spi_transfer* %152, %struct.spi_transfer** %6, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i8* @READ_X(i32 %153)
  %155 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %156 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %155, i32 0, i32 7
  %157 = load i8**, i8*** %156, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 0
  store i8* %154, i8** %158, align 8
  %159 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %160 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %159, i32 0, i32 7
  %161 = load i8**, i8*** %160, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 1
  store i8* null, i8** %162, align 8
  %163 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %164 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %163, i32 0, i32 7
  %165 = load i8**, i8*** %164, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 2
  store i8* null, i8** %166, align 8
  %167 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %168 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %167, i32 0, i32 7
  %169 = load i8**, i8*** %168, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  %171 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %172 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %171, i32 0, i32 2
  store i8** %170, i8*** %172, align 8
  %173 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %174 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %179 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %178, i32 0, i32 1
  store i32* %177, i32** %179, align 8
  %180 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %181 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %180, i32 0, i32 0
  store i32 3, i32* %181, align 8
  %182 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %183 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %184 = call i32 @spi_message_add_tail(%struct.spi_transfer* %182, %struct.spi_message* %183)
  br label %213

185:                                              ; preds = %134
  %186 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %187 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %186, i32 1
  store %struct.spi_transfer* %187, %struct.spi_transfer** %6, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i8* @READ_X(i32 %188)
  %190 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %191 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %190, i32 0, i32 6
  store i8* %189, i8** %191, align 8
  %192 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %193 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %192, i32 0, i32 6
  %194 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %195 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %194, i32 0, i32 2
  store i8** %193, i8*** %195, align 8
  %196 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %197 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %196, i32 0, i32 0
  store i32 1, i32* %197, align 8
  %198 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %199 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %200 = call i32 @spi_message_add_tail(%struct.spi_transfer* %198, %struct.spi_message* %199)
  %201 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %202 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %201, i32 1
  store %struct.spi_transfer* %202, %struct.spi_transfer** %6, align 8
  %203 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %204 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 2
  %206 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %207 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %206, i32 0, i32 1
  store i32* %205, i32** %207, align 8
  %208 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %209 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %208, i32 0, i32 0
  store i32 2, i32* %209, align 8
  %210 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %211 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %212 = call i32 @spi_message_add_tail(%struct.spi_transfer* %210, %struct.spi_message* %211)
  br label %213

213:                                              ; preds = %185, %150
  %214 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %4, align 8
  %215 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %247

218:                                              ; preds = %213
  %219 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %4, align 8
  %220 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %223 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %222, i32 0, i32 3
  store i64 %221, i64* %223, align 8
  %224 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %225 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %224, i32 1
  store %struct.spi_transfer* %225, %struct.spi_transfer** %6, align 8
  %226 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %227 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %226, i32 0, i32 6
  %228 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %229 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %228, i32 0, i32 2
  store i8** %227, i8*** %229, align 8
  %230 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %231 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %230, i32 0, i32 0
  store i32 1, i32* %231, align 8
  %232 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %233 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %234 = call i32 @spi_message_add_tail(%struct.spi_transfer* %232, %struct.spi_message* %233)
  %235 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %236 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %235, i32 1
  store %struct.spi_transfer* %236, %struct.spi_transfer** %6, align 8
  %237 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %238 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 2
  %240 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %241 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %240, i32 0, i32 1
  store i32* %239, i32** %241, align 8
  %242 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %243 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %242, i32 0, i32 0
  store i32 2, i32* %243, align 8
  %244 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %245 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %246 = call i32 @spi_message_add_tail(%struct.spi_transfer* %244, %struct.spi_message* %245)
  br label %247

247:                                              ; preds = %218, %213
  %248 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %249 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 7846
  br i1 %251, label %252, label %397

252:                                              ; preds = %247
  %253 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %254 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 4
  %257 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %258 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %257, i32 1
  store %struct.spi_message* %258, %struct.spi_message** %5, align 8
  %259 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %260 = call i32 @spi_message_init(%struct.spi_message* %259)
  %261 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %262 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %263 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %262, i32 0, i32 0
  store %struct.ads7846* %261, %struct.ads7846** %263, align 8
  %264 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %265 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %264, i32 1
  store %struct.spi_transfer* %265, %struct.spi_transfer** %6, align 8
  %266 = load i32, i32* %8, align 4
  %267 = call i8* @READ_Z1(i32 %266)
  %268 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %269 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %268, i32 0, i32 5
  store i8* %267, i8** %269, align 8
  %270 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %271 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %270, i32 0, i32 5
  %272 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %273 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %272, i32 0, i32 2
  store i8** %271, i8*** %273, align 8
  %274 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %275 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %274, i32 0, i32 0
  store i32 1, i32* %275, align 8
  %276 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %277 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %278 = call i32 @spi_message_add_tail(%struct.spi_transfer* %276, %struct.spi_message* %277)
  %279 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %280 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %279, i32 1
  store %struct.spi_transfer* %280, %struct.spi_transfer** %6, align 8
  %281 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %282 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 1
  %284 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %285 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %284, i32 0, i32 1
  store i32* %283, i32** %285, align 8
  %286 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %287 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %286, i32 0, i32 0
  store i32 2, i32* %287, align 8
  %288 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %289 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %290 = call i32 @spi_message_add_tail(%struct.spi_transfer* %288, %struct.spi_message* %289)
  %291 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %4, align 8
  %292 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %324

295:                                              ; preds = %252
  %296 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %4, align 8
  %297 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %300 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %299, i32 0, i32 3
  store i64 %298, i64* %300, align 8
  %301 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %302 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %301, i32 1
  store %struct.spi_transfer* %302, %struct.spi_transfer** %6, align 8
  %303 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %304 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %303, i32 0, i32 5
  %305 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %306 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %305, i32 0, i32 2
  store i8** %304, i8*** %306, align 8
  %307 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %308 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %307, i32 0, i32 0
  store i32 1, i32* %308, align 8
  %309 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %310 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %311 = call i32 @spi_message_add_tail(%struct.spi_transfer* %309, %struct.spi_message* %310)
  %312 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %313 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %312, i32 1
  store %struct.spi_transfer* %313, %struct.spi_transfer** %6, align 8
  %314 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %315 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 1
  %317 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %318 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %317, i32 0, i32 1
  store i32* %316, i32** %318, align 8
  %319 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %320 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %319, i32 0, i32 0
  store i32 2, i32* %320, align 8
  %321 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %322 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %323 = call i32 @spi_message_add_tail(%struct.spi_transfer* %321, %struct.spi_message* %322)
  br label %324

324:                                              ; preds = %295, %252
  %325 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %326 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 4
  %329 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %330 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %329, i32 1
  store %struct.spi_message* %330, %struct.spi_message** %5, align 8
  %331 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %332 = call i32 @spi_message_init(%struct.spi_message* %331)
  %333 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %334 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %335 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %334, i32 0, i32 0
  store %struct.ads7846* %333, %struct.ads7846** %335, align 8
  %336 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %337 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %336, i32 1
  store %struct.spi_transfer* %337, %struct.spi_transfer** %6, align 8
  %338 = load i32, i32* %8, align 4
  %339 = call i8* @READ_Z2(i32 %338)
  %340 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %341 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %340, i32 0, i32 4
  store i8* %339, i8** %341, align 8
  %342 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %343 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %342, i32 0, i32 4
  %344 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %345 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %344, i32 0, i32 2
  store i8** %343, i8*** %345, align 8
  %346 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %347 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %346, i32 0, i32 0
  store i32 1, i32* %347, align 8
  %348 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %349 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %350 = call i32 @spi_message_add_tail(%struct.spi_transfer* %348, %struct.spi_message* %349)
  %351 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %352 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %351, i32 1
  store %struct.spi_transfer* %352, %struct.spi_transfer** %6, align 8
  %353 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %354 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 0
  %356 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %357 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %356, i32 0, i32 1
  store i32* %355, i32** %357, align 8
  %358 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %359 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %358, i32 0, i32 0
  store i32 2, i32* %359, align 8
  %360 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %361 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %362 = call i32 @spi_message_add_tail(%struct.spi_transfer* %360, %struct.spi_message* %361)
  %363 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %4, align 8
  %364 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %396

367:                                              ; preds = %324
  %368 = load %struct.ads7846_platform_data*, %struct.ads7846_platform_data** %4, align 8
  %369 = getelementptr inbounds %struct.ads7846_platform_data, %struct.ads7846_platform_data* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %372 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %371, i32 0, i32 3
  store i64 %370, i64* %372, align 8
  %373 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %374 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %373, i32 1
  store %struct.spi_transfer* %374, %struct.spi_transfer** %6, align 8
  %375 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %376 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %375, i32 0, i32 4
  %377 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %378 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %377, i32 0, i32 2
  store i8** %376, i8*** %378, align 8
  %379 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %380 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %379, i32 0, i32 0
  store i32 1, i32* %380, align 8
  %381 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %382 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %383 = call i32 @spi_message_add_tail(%struct.spi_transfer* %381, %struct.spi_message* %382)
  %384 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %385 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %384, i32 1
  store %struct.spi_transfer* %385, %struct.spi_transfer** %6, align 8
  %386 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %387 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %386, i32 0, i32 3
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i32 0, i32 0
  %389 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %390 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %389, i32 0, i32 1
  store i32* %388, i32** %390, align 8
  %391 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %392 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %391, i32 0, i32 0
  store i32 2, i32* %392, align 8
  %393 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %394 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %395 = call i32 @spi_message_add_tail(%struct.spi_transfer* %393, %struct.spi_message* %394)
  br label %396

396:                                              ; preds = %367, %324
  br label %397

397:                                              ; preds = %396, %247
  %398 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %399 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %399, align 4
  %402 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %403 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %402, i32 1
  store %struct.spi_message* %403, %struct.spi_message** %5, align 8
  %404 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %405 = call i32 @spi_message_init(%struct.spi_message* %404)
  %406 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %407 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %408 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %407, i32 0, i32 0
  store %struct.ads7846* %406, %struct.ads7846** %408, align 8
  %409 = load %struct.ads7846*, %struct.ads7846** %3, align 8
  %410 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = icmp eq i32 %411, 7845
  br i1 %412, label %413, label %437

413:                                              ; preds = %397
  %414 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %415 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %414, i32 1
  store %struct.spi_transfer* %415, %struct.spi_transfer** %6, align 8
  %416 = load i8*, i8** @PWRDOWN, align 8
  %417 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %418 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %417, i32 0, i32 2
  %419 = load i8**, i8*** %418, align 8
  %420 = getelementptr inbounds i8*, i8** %419, i64 0
  store i8* %416, i8** %420, align 8
  %421 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %422 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %421, i32 0, i32 2
  %423 = load i8**, i8*** %422, align 8
  %424 = getelementptr inbounds i8*, i8** %423, i64 1
  store i8* null, i8** %424, align 8
  %425 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %426 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %425, i32 0, i32 2
  %427 = load i8**, i8*** %426, align 8
  %428 = getelementptr inbounds i8*, i8** %427, i64 2
  store i8* null, i8** %428, align 8
  %429 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %430 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %429, i32 0, i32 2
  %431 = load i8**, i8*** %430, align 8
  %432 = getelementptr inbounds i8*, i8** %431, i64 0
  %433 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %434 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %433, i32 0, i32 2
  store i8** %432, i8*** %434, align 8
  %435 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %436 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %435, i32 0, i32 0
  store i32 3, i32* %436, align 8
  br label %460

437:                                              ; preds = %397
  %438 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %439 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %438, i32 1
  store %struct.spi_transfer* %439, %struct.spi_transfer** %6, align 8
  %440 = load i8*, i8** @PWRDOWN, align 8
  %441 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %442 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %441, i32 0, i32 1
  store i8* %440, i8** %442, align 8
  %443 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %444 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %443, i32 0, i32 1
  %445 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %446 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %445, i32 0, i32 2
  store i8** %444, i8*** %446, align 8
  %447 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %448 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %447, i32 0, i32 0
  store i32 1, i32* %448, align 8
  %449 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %450 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %451 = call i32 @spi_message_add_tail(%struct.spi_transfer* %449, %struct.spi_message* %450)
  %452 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %453 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %452, i32 1
  store %struct.spi_transfer* %453, %struct.spi_transfer** %6, align 8
  %454 = load %struct.ads7846_packet*, %struct.ads7846_packet** %7, align 8
  %455 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %454, i32 0, i32 0
  %456 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %457 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %456, i32 0, i32 1
  store i32* %455, i32** %457, align 8
  %458 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %459 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %458, i32 0, i32 0
  store i32 2, i32* %459, align 8
  br label %460

460:                                              ; preds = %437, %413
  %461 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %462 = call i32 @CS_CHANGE(%struct.spi_transfer* byval(%struct.spi_transfer) align 8 %461)
  %463 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %464 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %465 = call i32 @spi_message_add_tail(%struct.spi_transfer* %463, %struct.spi_message* %464)
  ret void
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i8* @READ_Y(i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i8* @READ_X(i32) #1

declare dso_local i8* @READ_Z1(i32) #1

declare dso_local i8* @READ_Z2(i32) #1

declare dso_local i32 @CS_CHANGE(%struct.spi_transfer* byval(%struct.spi_transfer) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
